import Foundation
import WebRTC

public class AudioTrack: Track {

    public enum TracksState {
        case none
        case localOnly
        case remoteOnly
        case localAndRemote
    }

    public var audioTrack: RTCAudioTrack {
        get { return mediaTrack as! RTCAudioTrack }
    }

    private static var localTracksCount = 0 {
        didSet { recomputeTracksState() }
    }

    private static var remoteTracksCount = 0 {
        didSet { recomputeTracksState() }
    }

    internal static var tracksState: TracksState = .none {
        didSet {
            guard oldValue != tracksState else { return }
            #if os(iOS)
            LiveKit.onShouldConfigureAudioSession(tracksState, oldValue)
            #endif
        }
    }

    init(rtcTrack: RTCAudioTrack, name: String, source: Track.Source) {
        super.init(name: name, kind: .audio, source: source, track: rtcTrack)
    }

    // MARK: - Internal Methods

    internal override func stateUpdated() {
        super.stateUpdated()
        let delta = state == .started ? 1 : -1
        if self is LocalAudioTrack {
            AudioTrack.localTracksCount += delta
        } else {
            AudioTrack.remoteTracksCount += delta
        }
    }
}

// MARK: - Audio Session Configuration related

extension AudioTrack {

    internal static func recomputeTracksState() {
        if localTracksCount > 0 && remoteTracksCount == 0 {
            tracksState = .localOnly
        } else if localTracksCount == 0 && remoteTracksCount > 0 {
            tracksState = .remoteOnly
        } else if localTracksCount > 0 && remoteTracksCount > 0 {
            tracksState = .localAndRemote
        } else {
            tracksState = .none
        }
    }
}

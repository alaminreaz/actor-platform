package im.actor.core.js.providers.webrtc;

public interface JsPeerConnectionListener {
    void onIceCandidate(JsIceCandidateEvent candidate);
}
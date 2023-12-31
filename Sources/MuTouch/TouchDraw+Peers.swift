//  Created by warren on 12/19/22.

import Foundation
import MuPeer

TouchDraw: PeersControllerDelegate {

    public func didChange() {
    }

    public func received(data: Data,
                         viaStream: Bool) -> Bool {

        let decoder = JSONDecoder()
        if let item = try? decoder.decode(TouchCanvasItem.self, from: data) {
            TouchCanvas.remoteItem(item)
            return true
        }
        return false
    }

}

//
//  FriendList.swift
//  SwiftUIPractice
//
//  Created by burita083 on 2020/09/20.
//  Copyright © 2020 burita083. All rights reserved.
//

import SwiftUI

struct FriendList: View {
    var friendToInvite: [Friend]
    var body: some View {
        List(friendToInvite) {
            friend in ListRow(friend: friend)
        }.navigationBarTitle(Text("Friends"))
    }
}

struct ListRow: View {
    var friend: Friend
    var body: some View {
        HStack {
            Text(friend.name)
            Image("")
            .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 40)
        }
    }
}


var myFriends = [
    Friend(id: 1, name: "Vikas"),
    Friend(id: 2, name: "Jeff"),
    Friend(id: 3, name: "Jedd"),
    Friend(id: 4, name: "Ross"),
    Friend(id: 5, name: "Joey"),
]

struct FriendList_Previews: PreviewProvider {
    static var previews: some View {
        FriendList(friendToInvite: myFriends)
    }
}

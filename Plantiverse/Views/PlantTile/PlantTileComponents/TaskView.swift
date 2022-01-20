//
//  TaskView.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/3/21.
//

import SwiftUI

struct TaskView: View {
    var plantTask: PlantTask

    var body: some View {
        HStack {
            Image(systemName: plantTask.imageName)
                .imageScale(.small)
                .padding(.leading)
            Text(plantTask.name.rawValue)
                .font(.footnote)
                .padding(.top)
                .padding(.trailing)
                .padding(.bottom)
        }
        .background(.gray.opacity(0.75))
        .clipShape(Capsule())
   //     .accessibilityHidden(true)
     //   .accessibilityElement(children: .contain)
      //  .accessibilityElement(children: .combine)
        .accessibilityCustomContent("Task", plantTask.name.rawValue, importance: .high)
        .fixedSize(horizontal: true, vertical: false)
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView(plantTask: PlantTaskFactory().clean)
    }
}

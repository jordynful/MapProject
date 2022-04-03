//
//  ContentView.swift
//  MapProject
//
//  Created by Jordyn Fulbright on 3/1/22.
//

import SwiftUI
import MapKit

struct ContentView: View {
//    @State private var region = MKCoordinateRegion(
//        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.116_868), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
//    )
    //let
    var body: some View {
//        Map(coordinateRegion: $region)
        Text("Maps!")
        NavigationView {
            VStack {
                Text("Show Me Your World")
                    .font(.system(size: 30))
                    .frame(width: 300, height: 100)

                    .foregroundColor(.white)
                    .background(Color.init(UIColor(red: 0.703125, green: 0.8861727118, blue: 0.7683551908, alpha: 1)))
                    .cornerRadius(10)
                    .padding()
                
      
                VStack {
                    
                    
                    
                    NavigationLink( destination: MapView(thelat: 33.950951, thelong:-83.374792, pickMap: 0, latDelta: 0.001 , longDelta: 0.001 )) {
                        ButtonStyle(cap: "Tate Center Satellite")
                        
                        
                        //styling here
                        
                    }
                    NavigationLink( destination: MapView(thelat: 33.950951, thelong:-83.374792, pickMap: 1, latDelta: 0.0015 , longDelta: 0.0015)) {
                        ButtonStyle(cap: "Tate Center Satellite Flyover")
                    }
                    NavigationLink( destination: MapView(thelat: 33.950951, thelong:-83.374792, pickMap: 2, latDelta: 0.003 , longDelta: 0.003 )) {
                        ButtonStyle(cap: "Tate Center Standard Map")
                    }
                    NavigationLink( destination: MapView(thelat: 33.946743, thelong:-83.375213, pickMap: 0, latDelta: 0.001 , longDelta: 0.001 )) {
                        ButtonStyle(cap: "Sience Library Satellite")
                    }
                    NavigationLink( destination: MapView(thelat: 33.946743, thelong:-83.375213, pickMap: 1, latDelta: 0.002 , longDelta: 0.002)) {
                        ButtonStyle(cap: "Sience Library Satellite Flyover")
                    }
                    NavigationLink( destination: MapView(thelat: 33.946743, thelong:-83.375213, pickMap: 2, latDelta: 0.001 , longDelta: 0.001 )) {
                        ButtonStyle(cap: "Science Library Standard Map")
                    }
                    NavigationLink( destination: MapView(thelat: 33.930570, thelong: -83.37371372, pickMap: 0, latDelta: 0.005 , longDelta: 0.008 )) {
                        ButtonStyle(cap:"Lake Herrick Satellite")
                    }
                    NavigationLink( destination: MapView(thelat: 33.930570, thelong: -83.37371372, pickMap: 1, latDelta: 0.005 , longDelta: 0.01 )) {
                        ButtonStyle(cap:"Lake Herrick Satellite Flyover")
                    }
                    NavigationLink( destination: MapView(thelat: 33.930570, thelong: -83.37371372, pickMap: 2, latDelta: 0.005 , longDelta: 0.01 )) {
                        ButtonStyle(cap: "Lake Herrick Standard Map")
                    }
                    
                    
                }//vstack inside
                .frame(width: 300, height: 600)
                
                .background(Color.init(UIColor(red: 0.703125, green: 0.8861727118, blue: 0.7683551908, alpha: 1)))
                .cornerRadius(15)
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ButtonStyle: View {
    let steelGray = Color(white: 0.8)
    var cap: String
    var body: some View {
        Text(cap)
        .padding()
        .foregroundColor(.white)
        .background(steelGray)
        .cornerRadius(10)
        .shadow(color:.gray, radius: 5)
        
    }
}

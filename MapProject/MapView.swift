//
//  MapView.swift
//  MapProject
//
//  Created by Jordyn Fulbright on 3/1/22.
//
import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var thelat = Double()
    var thelong = Double()
    var pickMap = Int()
    var whichMap = [MKMapType.satelliteFlyover,MKMapType.satellite, MKMapType.standard]
    var latDelta = Double()
    var longDelta = Double()
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: thelat, longitude: thelong)
        let span = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: longDelta)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
        uiView.mapType = whichMap[pickMap]
    }
    
}
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(thelat: 34.011286, thelong: -116.166868)
    }
}

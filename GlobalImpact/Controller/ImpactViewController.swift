import UIKit
import MapKit
public class ImpactViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var animatedButton: UIButton!
    @IBOutlet weak var impactImage: UIImageView!
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func animateClick(_ sender: UIButton)
    {
        let impactLocation = CLLocationCoordinate2D(latitude: 2.046934, longitude: 45.318161)
        let mapSpan = MKCoordinateSpan(latitudeDelta: 5, longitudeDelta: 10.05)
        let impactRegion = MKCoordinateRegion(center: impactLocation, span: mapSpan)
        mapView.animatedZoom(zoomRegion: impactRegion, duration: 2.5)
    }
}
extension MKMapView
{
    public func animatedZoom(zoomRegion:MKCoordinateRegion, duration:TimeInterval)
    {
        MKMapView.animate(withDuration: duration, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 10, options: UIView.AnimationOptions.curveEaseIn, animations: { self.setRegion(zoomRegion, animated: true) }, completion: nil)
    }
}

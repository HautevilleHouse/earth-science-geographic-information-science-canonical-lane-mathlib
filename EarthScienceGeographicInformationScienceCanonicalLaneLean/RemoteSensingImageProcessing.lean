import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceCanonicalLaneLean

structure RemoteSensingPackage where
  atmosphericCorrection : Bool
  geometricRectification : Bool
  panSharpening : Bool
  classificationTechnique : String
  accuracyAssessment : Float

def RemoteSensingClosed (R : RemoteSensingPackage) : Prop :=
  R.atmosphericCorrection ∧ R.geometricRectification ∧ R.panSharpening ∧ R.accuracyAssessment > 0.8

theorem remote_sensing_closed_from_evidence (R : RemoteSensingPackage) (h1 : R.atmosphericCorrection) (h2 : R.geometricRectification) (h3 : R.panSharpening) (h4 : R.accuracyAssessment > 0.8) : RemoteSensingClosed R := by
  exact ⟨h1, h2, h3, h4⟩

end EarthScienceGeographicInformationScienceCanonicalLaneLean
end HautevilleHouse
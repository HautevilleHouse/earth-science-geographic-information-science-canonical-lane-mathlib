import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceCanonicalLaneLean

structure InterpolationPackage where
  krigingModel : Type u
  variogramFitted : Bool
  crossValidationRMSE : Float
  interpolationGrid : Nat
  semivariance : Array Float

def InterpolationClosed (I : InterpolationPackage) : Prop :=
  I.variogramFitted ∧ I.crossValidationRMSE < 0.5 ∧ I.interpolationGrid > 0

theorem interpolation_closed_from_evidence (I : InterpolationPackage) (h1 : I.variogramFitted) (h2 : I.crossValidationRMSE < 0.5) (h3 : I.interpolationGrid > 0) : InterpolationClosed I := by
  exact ⟨h1, h2, h3⟩

end EarthScienceGeographicInformationScienceCanonicalLaneLean
end HautevilleHouse
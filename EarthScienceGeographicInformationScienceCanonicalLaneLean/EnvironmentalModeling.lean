import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceCanonicalLaneLean

structure EnvironmentalModel where
  climateVariables : Type u
  soilProperties : Type v
  vegetationIndex : Float
  erosionRisk : Bool
  biodiversityHotspot : Bool

def EnvironmentalModelClosed (M : EnvironmentalModel) : Prop :=
  Nonempty M.climateVariables ∧ Nonempty M.soilProperties ∧ M.vegetationIndex > 0.0 ∧ M.biodiversityHotspot

theorem environmental_model_closed_from_evidence (M : EnvironmentalModel) (h1 : Nonempty M.climateVariables) (h2 : Nonempty M.soilProperties) (h3 : M.vegetationIndex > 0.0) (h4 : M.biodiversityHotspot) : EnvironmentalModelClosed M := by
  exact ⟨h1, h2, h3, h4⟩

end EarthScienceGeographicInformationScienceCanonicalLaneLean
end HautevilleHouse
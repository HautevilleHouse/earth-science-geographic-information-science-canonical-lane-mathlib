import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceCanonicalLaneLean

structure GeostatisticalEstimationModel where
  sampleData : Type
  variogramFit : Type
  krigingPredictions : Type
  unbiasednessCondition : Prop
  minimumVarianceAchieved : Prop
  crossValidationPassed : Prop
  unbiasednessConditionClosed : unbiasednessCondition
  minimumVarianceAchievedClosed : minimumVarianceAchieved
  crossValidationPassedClosed : crossValidationPassed

structure GeostatisticalEstimationEvidence (G : GeostatisticalEstimationModel) where
  unbiasednessConditionClosed : G.unbiasednessCondition
  minimumVarianceAchievedClosed : G.minimumVarianceAchieved
  crossValidationPassedClosed : G.crossValidationPassed

def GeostatisticalEstimationClosed (G : GeostatisticalEstimationModel) : Prop :=
  G.unbiasednessCondition ∧ G.minimumVarianceAchieved ∧ G.crossValidationPassed

theorem geostatistical_estimation_closed_from_evidence
    (G : GeostatisticalEstimationModel) (E : GeostatisticalEstimationEvidence G) :
    GeostatisticalEstimationClosed G := by
  exact And.intro E.unbiasednessConditionClosed
    (And.intro E.minimumVarianceAchievedClosed E.crossValidationPassedClosed)

end EarthScienceGeographicInformationScienceCanonicalLaneLean
end HautevilleHouse

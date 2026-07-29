import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceCanonicalLaneLean

structure SpatialInterpolationModel where
  pointObservations : Type
  variogramModel : Type
  krigingWeights : Type
  interpolationErrorAssessed : Prop
  crossValidationPerformed : Prop
  stationarityAssumed : Prop
  interpolationErrorAssessedClosed : interpolationErrorAssessed
  crossValidationPerformedClosed : crossValidationPerformed
  stationarityAssumedClosed : stationarityAssumed

structure SpatialInterpolationEvidence (I : SpatialInterpolationModel) where
  interpolationErrorAssessedClosed : I.interpolationErrorAssessed
  crossValidationPerformedClosed : I.crossValidationPerformed
  stationarityAssumedClosed : I.stationarityAssumed

def SpatialInterpolationClosed (I : SpatialInterpolationModel) : Prop :=
  I.interpolationErrorAssessed ∧ I.crossValidationPerformed ∧ I.stationarityAssumed

theorem spatial_interpolation_closed_from_evidence
    (I : SpatialInterpolationModel) (E : SpatialInterpolationEvidence I) :
    SpatialInterpolationClosed I := by
  exact And.intro E.interpolationErrorAssessedClosed
    (And.intro E.crossValidationPerformedClosed E.stationarityAssumedClosed)

end EarthScienceGeographicInformationScienceCanonicalLaneLean
end HautevilleHouse

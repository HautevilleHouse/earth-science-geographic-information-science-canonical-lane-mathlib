import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EarthScienceGeographicInformationScienceCanonicalLaneLean.RateDistortion

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceCanonicalLaneLean

structure SpatialDataModelsPackage where
  vectorData : Type u
  rasterData : Type v
  coordinateSystem : Prop
  spatialUncertaintyPropagation : Prop
  interpolationConsistency : Prop

structure SpatialDataModelsEvidence (S : SpatialDataModelsPackage) where
  coordinateSystemClosed : S.coordinateSystem
  spatialUncertaintyPropagationClosed : S.spatialUncertaintyPropagation
  interpolationConsistencyClosed : S.interpolationConsistency

def SpatialDataModelsClosed (S : SpatialDataModelsPackage) : Prop :=
  S.coordinateSystem ∧ S.spatialUncertaintyPropagation ∧ S.interpolationConsistency

theorem spatial_data_models_closed_from_evidence (S : SpatialDataModelsPackage) (Ev : SpatialDataModelsEvidence S) :
    SpatialDataModelsClosed S := by
  exact And.intro Ev.coordinateSystemClosed (And.intro Ev.spatialUncertaintyPropagationClosed Ev.interpolationConsistencyClosed)

end EarthScienceGeographicInformationScienceCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass
import EarthScienceGeographicInformationScienceCanonicalLaneLean.SpatialDataModel

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceCanonicalLaneLean

structure GeographicInformationSystem (M : SpatialDataModel) where
  dataModel : M
  rasterProcessing : Prop
  vectorProcessing : Prop
  spatialQueryEngine : Prop
  mapAlgebra : Prop

structure GeographicInformationSystemEvidence {M : SpatialDataModel} (G : GeographicInformationSystem M) where
  rasterProcessingClosed : G.rasterProcessing
  vectorProcessingClosed : G.vectorProcessing
  spatialQueryEngineClosed : G.spatialQueryEngine
  mapAlgebraClosed : G.mapAlgebra

def GeographicInformationSystemClosed {M : SpatialDataModel} (G : GeographicInformationSystem M) : Prop :=
  G.rasterProcessing ∧ G.vectorProcessing ∧ G.spatialQueryEngine ∧ G.mapAlgebra

theorem geographic_information_system_closed_from_evidence
    {M : SpatialDataModel} (G : GeographicInformationSystem M)
    (E : GeographicInformationSystemEvidence G) : GeographicInformationSystemClosed G := by
  exact And.intro E.rasterProcessingClosed
    (And.intro E.vectorProcessingClosed
      (And.intro E.spatialQueryEngineClosed E.mapAlgebraClosed))

end EarthScienceGeographicInformationScienceCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceCanonicalLaneLean

structure SpatialAnalysisPackage where
  spatialQuery : Type u
  mapAlgebraOperation : Type v
  terrainAnalysis : Bool
  hydrologicalModeling : Bool
  landUseClassification : Bool

def SpatialAnalysisClosed (P : SpatialAnalysisPackage) : Prop :=
  Nonempty P.spatialQuery ∧ Nonempty P.mapAlgebraOperation ∧ P.terrainAnalysis

theorem spatial_analysis_closed_from_evidence (P : SpatialAnalysisPackage) (hq : Nonempty P.spatialQuery) (hm : Nonempty P.mapAlgebraOperation) (ht : P.terrainAnalysis) : SpatialAnalysisClosed P := by
  exact ⟨hq, hm, ht⟩

end EarthScienceGeographicInformationScienceCanonicalLaneLean
end HautevilleHouse
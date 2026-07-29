import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceCanonicalLaneLean

structure SpatialAnalysisPackage (G : GeographicInformationPackage) where
  buffering : Prop
  overlay : Prop
  interpolation : Prop
  spatialJoin : Prop

def SpatialAnalysisClosed (S : SpatialAnalysisPackage G) : Prop :=
  S.buffering ∧ S.overlay ∧ S.interpolation ∧ S.spatialJoin

structure SpatialAnalysisEvidence (S : SpatialAnalysisPackage G) where
  bufferingClosed : S.buffering
  overlayClosed : S.overlay
  interpolationClosed : S.interpolation
  spatialJoinClosed : S.spatialJoin

theorem spatial_analysis_closed_from_evidence
    (S : SpatialAnalysisPackage G) (E : SpatialAnalysisEvidence S) :
    SpatialAnalysisClosed S := by
  exact And.intro E.bufferingClosed
    (And.intro E.overlayClosed
      (And.intro E.interpolationClosed E.spatialJoinClosed))

end EarthScienceGeographicInformationScienceCanonicalLaneLean
end HautevilleHouse
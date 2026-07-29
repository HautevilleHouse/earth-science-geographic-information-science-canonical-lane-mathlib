import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceCanonicalLaneLean

structure SpatialStatisticsPackage (G : GeographicInformationPackage) where
  moransI : ℝ
  gearysC : ℝ
  getisOrdG : ℝ
  spatialAutocorrelation : Prop
  pointPatternAnalysis : Prop

def SpatialStatisticsClosed (S : SpatialStatisticsPackage G) : Prop :=
  S.spatialAutocorrelation ∧ S.pointPatternAnalysis

structure SpatialStatisticsEvidence (S : SpatialStatisticsPackage G) where
  spatialAutocorrelationClosed : S.spatialAutocorrelation
  pointPatternAnalysisClosed : S.pointPatternAnalysis

theorem spatial_statistics_closed_from_evidence
    (S : SpatialStatisticsPackage G) (E : SpatialStatisticsEvidence S) :
    SpatialStatisticsClosed S := by
  exact And.intro E.spatialAutocorrelationClosed E.pointPatternAnalysisClosed

end EarthScienceGeographicInformationScienceCanonicalLaneLean
end HautevilleHouse
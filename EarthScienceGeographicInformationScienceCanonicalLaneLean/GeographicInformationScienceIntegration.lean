import canonicalLaneMathlib.AdmissibleClass
import EarthScienceGeographicInformationScienceCanonicalLaneLean.SpatialDataModel
import EarthScienceGeographicInformationScienceCanonicalLaneLean.GeographicInformationSystem
import EarthScienceGeographicInformationScienceCanonicalLaneLean.RemoteSensing
import EarthScienceGeographicInformationScienceCanonicalLaneLean.SpatialAnalysis
import EarthScienceGeographicInformationScienceCanonicalLaneLean.GeographicDataQuality

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceCanonicalLaneLean

structure GeographicInformationScienceIntegration (M : SpatialDataModel) (G : GeographicInformationSystem M) (R : RemoteSensingPlatform) (S : SpatialAnalysis G) (Q : GeographicDataQuality) where
  dataModel : M
  gis : G
  remoteSensing : R
  analysis : S
  quality : Q
  integrationComplete : Prop

structure GeographicInformationScienceIntegrationEvidence
    {M : SpatialDataModel} {G : GeographicInformationSystem M} {R : RemoteSensingPlatform}
    {S : SpatialAnalysis G} {Q : GeographicDataQuality}
    (I : GeographicInformationScienceIntegration M G R S Q) where
  dataModelClosed : SpatialDataClosed I.dataModel
  gisClosed : GeographicInformationSystemClosed I.gis
  remoteSensingClosed : RemoteSensingClosed I.remoteSensing
  analysisClosed : SpatialAnalysisClosed I.analysis
  qualityClosed : GeographicDataQualityClosed I.quality
  integrationCompleteClosed : I.integrationComplete

def GeographicInformationScienceIntegrationClosed
    {M : SpatialDataModel} {G : GeographicInformationSystem M} {R : RemoteSensingPlatform}
    {S : SpatialAnalysis G} {Q : GeographicDataQuality}
    (I : GeographicInformationScienceIntegration M G R S Q) : Prop :=
  SpatialDataClosed I.dataModel ∧
  GeographicInformationSystemClosed I.gis ∧
  RemoteSensingClosed I.remoteSensing ∧
  SpatialAnalysisClosed I.analysis ∧
  GeographicDataQualityClosed I.quality ∧
  I.integrationComplete

theorem geographic_information_science_integration_closed_from_evidence
    {M : SpatialDataModel} {G : GeographicInformationSystem M} {R : RemoteSensingPlatform}
    {S : SpatialAnalysis G} {Q : GeographicDataQuality}
    (I : GeographicInformationScienceIntegration M G R S Q)
    (E : GeographicInformationScienceIntegrationEvidence I) :
    GeographicInformationScienceIntegrationClosed I := by
  exact And.intro E.dataModelClosed
    (And.intro E.gisClosed
      (And.intro E.remoteSensingClosed
        (And.intro E.analysisClosed
          (And.intro E.qualityClosed E.integrationCompleteClosed))))

end EarthScienceGeographicInformationScienceCanonicalLaneLean
end HautevilleHouse
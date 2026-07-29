import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceCanonicalLaneLean

structure RemoteSensingPlatform where
  sensorType : String
  spectralResolution : String
  spatialResolution : String
  temporalResolution : String
  radiometricResolution : String

structure RemoteSensingEvidence (R : RemoteSensingPlatform) where
  sensorTypeClosed : R.sensorType ∈ {"Multispectral", "Hyperspectral", "Radar", "Lidar"}
  spectralResolutionClosed : R.spectralResolution ≠ ""
  spatialResolutionClosed : R.spatialResolution ≠ ""
  temporalResolutionClosed : R.temporalResolution ≠ ""
  radiometricResolutionClosed : R.radiometricResolution ≠ ""

def RemoteSensingClosed (R : RemoteSensingPlatform) : Prop :=
  R.sensorType ∈ {"Multispectral", "Hyperspectral", "Radar", "Lidar"} ∧
  R.spectralResolution ≠ "" ∧ R.spatialResolution ≠ "" ∧
  R.temporalResolution ≠ "" ∧ R.radiometricResolution ≠ ""

theorem remote_sensing_closed_from_evidence (R : RemoteSensingPlatform) (E : RemoteSensingEvidence R) :
    RemoteSensingClosed R := by
  exact And.intro E.sensorTypeClosed
    (And.intro E.spectralResolutionClosed
      (And.intro E.spatialResolutionClosed
        (And.intro E.temporalResolutionClosed E.radiometricResolutionClosed)))

end EarthScienceGeographicInformationScienceCanonicalLaneLean
end HautevilleHouse
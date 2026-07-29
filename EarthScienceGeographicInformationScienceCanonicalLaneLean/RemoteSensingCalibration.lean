import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceCanonicalLaneLean

structure RemoteSensingCalibrationModel where
  sensorRadiance : Type
  atmosphericCorrection : Type
  surfaceReflectance : Type
  radiometricCalibration : Prop
  geometricRegistration : Prop
  validationPerformed : Prop
  radiometricCalibrationClosed : radiometricCalibration
  geometricRegistrationClosed : geometricRegistration
  validationPerformedClosed : validationPerformed

structure RemoteSensingCalibrationEvidence (R : RemoteSensingCalibrationModel) where
  radiometricCalibrationClosed : R.radiometricCalibration
  geometricRegistrationClosed : R.geometricRegistration
  validationPerformedClosed : R.validationPerformed

def RemoteSensingCalibrationClosed (R : RemoteSensingCalibrationModel) : Prop :=
  R.radiometricCalibration ∧ R.geometricRegistration ∧ R.validationPerformed

theorem remote_sensing_calibration_closed_from_evidence
    (R : RemoteSensingCalibrationModel) (E : RemoteSensingCalibrationEvidence R) :
    RemoteSensingCalibrationClosed R := by
  exact And.intro E.radiometricCalibrationClosed
    (And.intro E.geometricRegistrationClosed E.validationPerformedClosed)

end EarthScienceGeographicInformationScienceCanonicalLaneLean
end HautevilleHouse

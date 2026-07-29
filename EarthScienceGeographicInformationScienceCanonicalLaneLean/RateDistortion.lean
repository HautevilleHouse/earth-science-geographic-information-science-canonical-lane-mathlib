import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EarthScienceGeographicInformationScienceCanonicalLaneLean.ChannelCapacity

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceCanonicalLaneLean

structure RateDistortionPackage where
  sourceSymbols : Type u
  reproductionSymbols : Type v
  distortionMeasure : sourceSymbols → reproductionSymbols → ℝ
  rateDistortionFunction : ℝ → ℝ
  convexity : Prop
  operationalRelevance : Prop

structure RateDistortionEvidence (R : RateDistortionPackage) where
  convexityClosed : R.convexity
  operationalRelevanceClosed : R.operationalRelevance

def RateDistortionClosed (R : RateDistortionPackage) : Prop :=
  R.convexity ∧ R.operationalRelevance

theorem rate_distortion_closed_from_evidence (R : RateDistortionPackage) (Ev : RateDistortionEvidence R) :
    RateDistortionClosed R := by
  exact And.intro Ev.convexityClosed Ev.operationalRelevanceClosed

end EarthScienceGeographicInformationScienceCanonicalLaneLean
end HautevilleHouse

import EarthScienceGeographicInformationScienceCanonicalLaneLean.ShannonEntropyPackage

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceCanonicalLaneLean

structure RateDistortionPackage {E : ShannonEntropyPackage} where
  reproduction : Type
  distortionMeasure : E.source → reproduction → ℝ
  rateDistortionFunction : ℝ → ℝ
  achievable : Prop
  convexFunction : Prop

structure RateDistortionEvidence {E : ShannonEntropyPackage} (R : RateDistortionPackage E) where
  achievableClosed : R.achievable
  convexFunctionClosed : R.convexFunction

def RateDistortionClosed {E : ShannonEntropyPackage} (R : RateDistortionPackage E) : Prop :=
  R.achievable ∧ R.convexFunction

theorem rate_distortion_closed_from_evidence {E : ShannonEntropyPackage}
    (R : RateDistortionPackage E) (Ev : RateDistortionEvidence R) :
    RateDistortionClosed R := by
  exact And.intro Ev.achievableClosed Ev.convexFunctionClosed

end EarthScienceGeographicInformationScienceCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EarthScienceGeographicInformationScienceCanonicalLaneLean.ShannonEntropy

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceCanonicalLaneLean

structure ChannelCapacityPackage where
  inputAlphabet : Type u
  outputAlphabet : Type v
  transitionMatrix : inputAlphabet → outputAlphabet → ℝ
  channelCapacity : ℝ
  capacityAchievable : Prop
  rateInequality : Prop

structure ChannelCapacityEvidence (C : ChannelCapacityPackage) where
  capacityAchievableClosed : C.capacityAchievable
  rateInequalityClosed : C.rateInequality

def ChannelCapacityClosed (C : ChannelCapacityPackage) : Prop :=
  C.capacityAchievable ∧ C.rateInequality

theorem channel_capacity_closed_from_evidence (C : ChannelCapacityPackage) (Ev : ChannelCapacityEvidence C) :
    ChannelCapacityClosed C := by
  exact And.intro Ev.capacityAchievableClosed Ev.rateInequalityClosed

end EarthScienceGeographicInformationScienceCanonicalLaneLean
end HautevilleHouse

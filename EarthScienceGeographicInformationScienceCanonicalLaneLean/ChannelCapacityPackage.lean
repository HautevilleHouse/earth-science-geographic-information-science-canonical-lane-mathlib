import EarthScienceGeographicInformationScienceCanonicalLaneLean.ShannonEntropyPackage

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceCanonicalLaneLean

structure ChannelCapacityPackage {E : ShannonEntropyPackage} where
  input : E.source
  output : Type
  channelMatrix : E.source → output → ℝ
  capacity : ℝ
  capacityAchievable : Prop
  capacityNonnegative : capacity ≥ 0

structure ChannelCapacityEvidence {E : ShannonEntropyPackage} (C : ChannelCapacityPackage E) where
  capacityAchievableClosed : C.capacityAchievable
  capacityNonnegativeClosed : C.capacityNonnegative

def ChannelCapacityClosed {E : ShannonEntropyPackage} (C : ChannelCapacityPackage E) : Prop :=
  C.capacityAchievable ∧ C.capacityNonnegative

theorem channel_capacity_closed_from_evidence {E : ShannonEntropyPackage}
    (C : ChannelCapacityPackage E) (Ev : ChannelCapacityEvidence C) :
    ChannelCapacityClosed C := by
  exact And.intro Ev.capacityAchievableClosed Ev.capacityNonnegativeClosed

end EarthScienceGeographicInformationScienceCanonicalLaneLean
end HautevilleHouse
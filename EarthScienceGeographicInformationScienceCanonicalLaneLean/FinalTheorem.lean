import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EarthScienceGeographicInformationScienceCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.EarthScienceGeographicInformationScienceCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceCanonicalLaneLean

def ConstrainedInformationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_information_endgame (A : AdmissibleClass) :
    ConstrainedInformationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthScienceGeographicInformationScienceCanonicalLaneLean
end HautevilleHouse

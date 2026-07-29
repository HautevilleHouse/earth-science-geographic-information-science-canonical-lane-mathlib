import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ShannonEntropyClosed A.object ∧ RateDistortionClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.bridgeWitness

end EarthScienceGeographicInformationScienceCanonicalLaneLean
end HautevilleHouse

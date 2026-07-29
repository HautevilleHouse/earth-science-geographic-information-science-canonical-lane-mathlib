import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceCanonicalLaneLean

structure UncertaintyPropagationModel where
  errorSource : Type
  covarianceStructure : Type
  monteCarloIterations : Nat
  errorBoundComputed : Prop
  confidenceIntervalDerived : Prop
  propagationLawVerified : Prop
  errorBoundComputedClosed : errorBoundComputed
  confidenceIntervalDerivedClosed : confidenceIntervalDerived
  propagationLawVerifiedClosed : propagationLawVerified

structure UncertaintyPropagationEvidence (U : UncertaintyPropagationModel) where
  errorBoundComputedClosed : U.errorBoundComputed
  confidenceIntervalDerivedClosed : U.confidenceIntervalDerived
  propagationLawVerifiedClosed : U.propagationLawVerified

def UncertaintyPropagationClosed (U : UncertaintyPropagationModel) : Prop :=
  U.errorBoundComputed ∧ U.confidenceIntervalDerived ∧ U.propagationLawVerified

theorem uncertainty_propagation_closed_from_evidence
    (U : UncertaintyPropagationModel) (E : UncertaintyPropagationEvidence U) :
    UncertaintyPropagationClosed U := by
  exact And.intro E.errorBoundComputedClosed
    (And.intro E.confidenceIntervalDerivedClosed E.propagationLawVerifiedClosed)

end EarthScienceGeographicInformationScienceCanonicalLaneLean
end HautevilleHouse

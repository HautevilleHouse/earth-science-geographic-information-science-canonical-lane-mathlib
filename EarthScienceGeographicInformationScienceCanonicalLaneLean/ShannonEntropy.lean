import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceCanonicalLaneLean

structure ShannonEntropyPackage where
  eventSpace : Type u
  probabilityMass : eventSpace → ℝ
  entropy : ℝ
  entropyNonnegative : entropy ≥ 0
  entropyBounds : Prop

structure ShannonEntropyEvidence (E : ShannonEntropyPackage) where
  entropyNonnegativeClosed : E.entropyNonnegative
  entropyBoundsClosed : E.entropyBounds

def ShannonEntropyClosed (E : ShannonEntropyPackage) : Prop :=
  E.entropyNonnegative ∧ E.entropyBounds

theorem shannon_entropy_closed_from_evidence (E : ShannonEntropyPackage) (Ev : ShannonEntropyEvidence E) :
    ShannonEntropyClosed E := by
  exact And.intro Ev.entropyNonnegativeClosed Ev.entropyBoundsClosed

end EarthScienceGeographicInformationScienceCanonicalLaneLean
end HautevilleHouse

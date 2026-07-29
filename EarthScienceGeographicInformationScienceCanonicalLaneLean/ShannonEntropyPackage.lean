import EarthScienceGeographicInformationScienceCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceCanonicalLaneLean

structure ShannonEntropyPackage where
  source : Type
  probabilityMass : source → ℝ
  entropy : ℝ
  entropyNonnegative : entropy ≥ 0
  maxEntropyUniform : Prop

structure ShannonEntropyEvidence (E : ShannonEntropyPackage) where
  entropyNonnegativeClosed : E.entropyNonnegative
  maxEntropyUniformClosed : E.maxEntropyUniform

def ShannonEntropyClosed (E : ShannonEntropyPackage) : Prop :=
  E.entropyNonnegative ∧ E.maxEntropyUniform

theorem shannon_entropy_closed_from_evidence (E : ShannonEntropyPackage) (Ev : ShannonEntropyEvidence E) :
    ShannonEntropyClosed E := by
  exact And.intro Ev.entropyNonnegativeClosed Ev.maxEntropyUniformClosed

end EarthScienceGeographicInformationScienceCanonicalLaneLean
end HautevilleHouse
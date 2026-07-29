import EarthScienceGeographicInformationScienceCanonicalLaneLean.ShannonEntropyPackage

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceCanonicalLaneLean

structure SourceCodingTheoremPackage {E : ShannonEntropyPackage} where
  codeLength : ℕ → ℝ
  averageLength : ℝ
  entropyLowerBound : averageLength ≥ E.entropy
  achievability : Prop
  huffmanOptimal : Prop

structure SourceCodingTheoremEvidence {E : ShannonEntropyPackage} (S : SourceCodingTheoremPackage E) where
  entropyLowerBoundClosed : S.entropyLowerBound
  achievabilityClosed : S.achievability
  huffmanOptimalClosed : S.huffmanOptimal

def SourceCodingTheoremClosed {E : ShannonEntropyPackage} (S : SourceCodingTheoremPackage E) : Prop :=
  S.entropyLowerBound ∧ S.achievability ∧ S.huffmanOptimal

theorem source_coding_theorem_closed_from_evidence {E : ShannonEntropyPackage}
    (S : SourceCodingTheoremPackage E) (Ev : SourceCodingTheoremEvidence S) :
    SourceCodingTheoremClosed S := by
  exact And.intro Ev.entropyLowerBoundClosed (And.intro Ev.achievabilityClosed Ev.huffmanOptimalClosed)

end EarthScienceGeographicInformationScienceCanonicalLaneLean
end HautevilleHouse
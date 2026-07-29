import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceCanonicalLaneLean

structure GeographicDataQuality where
  accuracy : String
  precision : Real
  completeness : Real
  consistency : Bool
  lineage : String

structure GeographicDataQualityEvidence (Q : GeographicDataQuality) where
  accuracyClosed : Q.accuracy ∈ {"Positional", "Temporal", "Thematic"}
  precisionClosed : Q.precision ≥ 0.0
  completenessClosed : 0.0 ≤ Q.completeness ∧ Q.completeness ≤ 1.0
  consistencyClosed : Q.consistency
  lineageClosed : Q.lineage ≠ ""

def GeographicDataQualityClosed (Q : GeographicDataQuality) : Prop :=
  Q.accuracy ∈ {"Positional", "Temporal", "Thematic"} ∧
  Q.precision ≥ 0.0 ∧
  0.0 ≤ Q.completeness ∧ Q.completeness ≤ 1.0 ∧
  Q.consistency ∧
  Q.lineage ≠ ""

theorem geographic_data_quality_closed_from_evidence (Q : GeographicDataQuality) (E : GeographicDataQualityEvidence Q) :
    GeographicDataQualityClosed Q := by
  exact And.intro E.accuracyClosed
    (And.intro E.precisionClosed
      (And.intro (And.intro (by
        have := E.completenessClosed
        exact this.1) (by
        have := E.completenessClosed
        exact this.2))
        (And.intro E.consistencyClosed E.lineageClosed)))

end EarthScienceGeographicInformationScienceCanonicalLaneLean
end HautevilleHouse
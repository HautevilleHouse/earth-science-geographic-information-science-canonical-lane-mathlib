import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceCanonicalLaneLean

structure SpatialDomain (α : Type u) where
  carrier : Set α
  topology : TopologicalSpace carrier
  borelMeasure : Measure carrier

def spatialDomainProjection (α : Type u) : Projection (SpatialDomain α) := {
  toFun := id
  idempotent := by intro x; rfl
}

structure SpatialDataLayer (α : Type u) (β : Type v) where
  domain : SpatialDomain α
  attribute : carrier → β
  quality : carrier → ℝ

structure GeographicInformationPackage where
  domain : SpatialDomain ℝ²
  layers : List (SpatialDataLayer ℝ² ℝ)
  coordinateSystem : Prop
  mapProjection : Prop
  resolution : ℕ

structure GeographicInformationEvidence (G : GeographicInformationPackage) where
  domainCovered : G.domain.carrier ≠ ∅
  layersConsistent : ∀ l ∈ G.layers, l.domain = G.domain
  coordinateSystemDefined : G.coordinateSystem
  mapProjectionDefined : G.mapProjection

def GeographicInformationClosed (G : GeographicInformationPackage) : Prop :=
  G.domain.carrier ≠ ∅ ∧
  (∀ l ∈ G.layers, l.domain = G.domain) ∧
  G.coordinateSystem ∧
  G.mapProjection

theorem geographic_information_closed_from_evidence
    (G : GeographicInformationPackage) (E : GeographicInformationEvidence G) :
    GeographicInformationClosed G := by
  exact And.intro E.domainCovered
    (And.intro E.layersConsistent
      (And.intro E.coordinateSystemDefined E.mapProjectionDefined))

end EarthScienceGeographicInformationScienceCanonicalLaneLean
end HautevilleHouse
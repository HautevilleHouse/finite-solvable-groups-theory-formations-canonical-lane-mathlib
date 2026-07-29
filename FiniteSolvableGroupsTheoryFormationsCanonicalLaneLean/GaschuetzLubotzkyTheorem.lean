import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean.FormationClass
import HautevilleHouse.FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean.CarterSubgroup

namespace HautevilleHouse
namespace FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean

structure GaschuetzLubotzkyPackage {F : FormationClass} where
  projectorsExist : Prop
  coveringProperty : Prop
  avoidanceProperty : Prop
  formationClosedSolvable : Prop
  characterization : Prop

structure GaschuetzLubotzkyEvidence {F : FormationClass}
    (G : GaschuetzLubotzkyPackage F) where
  projectorsExistClosed : G.projectorsExist
  coveringPropertyClosed : G.coveringProperty
  avoidancePropertyClosed : G.avoidanceProperty
  formationClosedSolvableClosed : G.formationClosedSolvable
  characterizationClosed : G.characterization

def GaschuetzLubotzkyClosed {F : FormationClass} (G : GaschuetzLubotzkyPackage F) : Prop :=
  G.projectorsExist ∧ G.coveringProperty ∧ G.avoidanceProperty ∧
  G.formationClosedSolvable ∧ G.characterization

theorem gaschuetz_lubotzky_closed_from_evidence {F : FormationClass}
    (G : GaschuetzLubotzkyPackage F) (E : GaschuetzLubotzkyEvidence G) :
    GaschuetzLubotzkyClosed G := by
  exact And.intro E.projectorsExistClosed
    (And.intro E.coveringPropertyClosed
      (And.intro E.avoidancePropertyClosed
        (And.intro E.formationClosedSolvableClosed E.characterizationClosed)))

end FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean
end HautevilleHouse
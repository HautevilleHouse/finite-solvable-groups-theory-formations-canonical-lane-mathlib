import SaturatedFormations

/-!
# Canonical Residuals Package
-/

namespace HautevilleHouse
namespace FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean

structure CanonicalResidualsPackage (P : SaturatedFormationPackage) where
  formalizedResidual : Functor
  transferProperty : Prop
  closureUnderExtensions : Prop

structure CanonicalResidualsEvidence {P : SaturatedFormationPackage} (C : CanonicalResidualsPackage P) where
  transferPropertyClosed : C.transferProperty
  closureUnderExtensionsClosed : C.closureUnderExtensions

def CanonicalResidualsClosed {P : SaturatedFormationPackage} (C : CanonicalResidualsPackage P) : Prop :=
  C.transferProperty ∧ C.closureUnderExtensions

theorem canonical_residuals_closed_from_evidence {P : SaturatedFormationPackage}
    (C : CanonicalResidualsPackage P) (E : CanonicalResidualsEvidence C) :
    CanonicalResidualsClosed C :=
  by exact And.intro E.transferPropertyClosed E.closureUnderExtensionsClosed

end FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean
end HautevilleHouse

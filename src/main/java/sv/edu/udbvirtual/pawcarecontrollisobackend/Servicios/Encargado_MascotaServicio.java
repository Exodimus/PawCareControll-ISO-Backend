package sv.edu.udbvirtual.pawcarecontrollisobackend.Servicios;

import sv.edu.udbvirtual.pawcarecontrollisobackend.Model.Encargado_MascotaModel;

import java.util.ArrayList;
import java.util.Optional;

public interface Encargado_MascotaServicio {

    ArrayList<Encargado_MascotaModel> getAllEncargado_Mascota();
    Optional<Encargado_MascotaModel> getEncargado_MascotaById(Long id);
    Encargado_MascotaModel GuardarEncargado_Mascota(Encargado_MascotaModel a);

    Encargado_MascotaModel ActualizarEncargado_Mascota(Long id, Encargado_MascotaModel encargado_Mascota);
}

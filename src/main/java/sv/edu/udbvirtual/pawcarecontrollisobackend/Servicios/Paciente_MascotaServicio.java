package sv.edu.udbvirtual.pawcarecontrollisobackend.Servicios;

import org.springframework.stereotype.Service;
import sv.edu.udbvirtual.pawcarecontrollisobackend.Model.Encargado_MascotaModel;
import sv.edu.udbvirtual.pawcarecontrollisobackend.Model.Paciente_MascotaModel;

import java.util.ArrayList;
import java.util.Optional;



public interface Paciente_MascotaServicio {

    ArrayList<Paciente_MascotaModel> getAllPacienteMascota();
    Optional<Paciente_MascotaModel> getPaciente_MascotaById(Long id);
    Paciente_MascotaModel GuardarPaciente_Mascota(Paciente_MascotaModel a);

    Paciente_MascotaModel ActualizarPaciente_Mascota(Long id, Paciente_MascotaModel pacienteMascota);
}

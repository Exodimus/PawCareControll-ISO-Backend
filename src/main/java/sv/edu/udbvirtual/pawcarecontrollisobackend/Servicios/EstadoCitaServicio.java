package sv.edu.udbvirtual.pawcarecontrollisobackend.Servicios;

import sv.edu.udbvirtual.pawcarecontrollisobackend.Model.EstadoCitasModel;

import java.util.ArrayList;
import java.util.Optional;

public interface EstadoCitaServicio {
    ArrayList<EstadoCitasModel> getAllEstadoCita();
    Optional<EstadoCitasModel> getEstadoCitaById(Long id);
    EstadoCitasModel GuardarEstadoCita(EstadoCitasModel a);


    EstadoCitasModel ActualizarEstadoCita(Long id, EstadoCitasModel estadoCita);
}

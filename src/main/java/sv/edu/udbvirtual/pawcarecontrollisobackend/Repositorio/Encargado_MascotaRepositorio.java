package sv.edu.udbvirtual.pawcarecontrollisobackend.Repositorio;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import sv.edu.udbvirtual.pawcarecontrollisobackend.Model.Encargado_MascotaModel;
import sv.edu.udbvirtual.pawcarecontrollisobackend.Model.UsuarioModel;

import java.util.ArrayList;
import java.util.Optional;

public interface Encargado_MascotaRepositorio extends CrudRepository<Encargado_MascotaModel, Long> {

    @Query("SELECT em FROM Encargado_MascotaModel em WHERE  em.Estatus = 1")
    ArrayList<Encargado_MascotaModel> allEncargadosMascota();

    @Query("SELECT em FROM Encargado_MascotaModel em WHERE em.id=:id AND em.Estatus = 1")
    Optional<Encargado_MascotaModel> encargadoMascotaById(Long id);

}

package sv.edu.udbvirtual.pawcarecontrollisobackend.Servicios;

import java.util.ArrayList;
import java.util.Optional;
import sv.edu.udbvirtual.pawcarecontrollisobackend.Model.TipoUsuarioModel;

public interface TipoUsuarioServicio {

    ArrayList<TipoUsuarioModel> getAllTipoUsuario();
    Optional<TipoUsuarioModel> getTipoUsuarioById(Long id);
    TipoUsuarioModel GuardarTipoUsuario(TipoUsuarioModel a);
    boolean EliminarTipoUsuario(Long id);

    TipoUsuarioModel ActualizarTipoUsuario(Long id, TipoUsuarioModel tipoUsuario);
}

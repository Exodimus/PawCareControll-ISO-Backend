package sv.edu.udbvirtual.pawcarecontrollisobackend.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import sv.edu.udbvirtual.pawcarecontrollisobackend.Servicios.EstadoCitaServicio;
import sv.edu.udbvirtual.pawcarecontrollisobackend.Model.EstadoCitasModel;

import java.util.ArrayList;
import java.util.Optional;
@RestController
@RequestMapping("EstadoCita")
public class EstadoCitasController {
    @Autowired
    EstadoCitaServicio estadoCitaServicio;

    /**MOSTRAR CITAS ACTIVAS**/
    @GetMapping("/All")
    public ArrayList<EstadoCitasModel> getAllEstadoCita(){
        return estadoCitaServicio.getAllEstadoCita();
    }

    @GetMapping("/Find/{id}")
    public Optional<EstadoCitasModel> getEstadoCitaById(@PathVariable("id") long id){
        return estadoCitaServicio.getEstadoCitaById(id);
    }

    @PostMapping("/Save")
    public EstadoCitasModel GuardarEstadoCita(@RequestBody EstadoCitasModel a){
        return estadoCitaServicio.GuardarEstadoCita(a);
    }

    @PutMapping("/Update/{id}")
    public ResponseEntity<EstadoCitasModel> actualizarEstadoCita(@PathVariable("id") Long id, @RequestBody EstadoCitasModel estadoCita) {
        EstadoCitasModel estadoCitaActualizado = estadoCitaServicio.ActualizarEstadoCita(id, estadoCita);
        if (estadoCitaActualizado != null) {
            return new ResponseEntity<>(estadoCitaActualizado, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

}

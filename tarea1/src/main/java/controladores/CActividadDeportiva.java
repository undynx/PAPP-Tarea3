package controladores;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import datatypes.DtActividad;
import datatypes.DtClase;
import excepciones.ExisteActividadDepException;
import interfaces.IActividadDeportiva;
import logica.ActividadDeportiva;
import logica.Clase;
import logica.InstitucionDeportiva;
import persistencia.Conexion;


public class CActividadDeportiva implements IActividadDeportiva {
	
	public List<ActividadDeportiva> actividades = new ArrayList<>();

	private static CActividadDeportiva instancia = null;
	
	public static CActividadDeportiva getInstancia() {
		if (instancia == null)
			instancia = new CActividadDeportiva();
		return instancia;
	}
//==========================EntityManager =============================		
			Conexion conexion = Conexion.getInstancia();
			EntityManager em = conexion.getEntityManager();

//=========================Hibernate altaActividadDeportiva============================================
	@Override
	public void altaActividadDeportiva(InstitucionDeportiva institucion, String nombreActividad, String descripcion, int duracionMinutos,
			double costo, Date fechaAlta)throws ExisteActividadDepException {
		ActividadDeportiva actividad = buscarActividadDeportiva(nombreActividad);
		if(actividad != null) {
			throw new ExisteActividadDepException("Ya existe una actividad con el nombre");
		}else {
			actividad = new ActividadDeportiva(institucion, nombreActividad, descripcion, duracionMinutos, costo, fechaAlta);
			institucion.agregarActividadDeportiva(actividad);
		    em.getTransaction().begin();
		    em.persist(actividad);
		    em.getTransaction().commit();
		}

	}
	
//=========================Hibernate buscarActividadDeportiva============================================
	
	public ActividadDeportiva buscarActividadDeportiva(String nombre) {
        // Utiliza el método find del EntityManager para buscar la actividad por su nombre
        return em.find(ActividadDeportiva.class, nombre);
    }

		
//========================= Hibernate consultaActividadDeportiva============================================	 
	
	public List<ActividadDeportiva> consultaActividadDeportiva(String institucion) {
		String jpql = "SELECT a FROM ActividadDeportiva a WHERE a.institucion = :institucion";
		TypedQuery<ActividadDeportiva> query = em.createQuery(jpql, ActividadDeportiva.class);
		query.setParameter("institucion", institucion);

		return query.getResultList();
	}
	

	
//========================= Hibernate buscarActividad============================================
	// Utiliza el método find del EntityManager para buscar la actividad por su nombre
	public ActividadDeportiva buscarActividad(String nombreActividad) {
		return em.find(ActividadDeportiva.class, nombreActividad);
		}
	
//=====================================================================	
	public void modificarDescripcion(String nombreActividad, String nuevaDescripcion) {
		ActividadDeportiva actividad = buscarActividadDeportiva(nombreActividad);
		em.getTransaction().begin();
		actividad.setDescripcion(nuevaDescripcion);
		em.merge(actividad);
		em.getTransaction().commit();
		
	}

//=====================================================================	

	public void modificarDuracion(String nombreActividad, int nuevaDuracion) {
		ActividadDeportiva actividad = buscarActividadDeportiva(nombreActividad);
		em.getTransaction().begin();
		actividad.setDuracionMinutos(nuevaDuracion);
		em.merge(actividad);
		em.getTransaction().commit();
	}

//=====================================================================	

	public void modificarCosto(String nombreActividad, double nuevoCosto) {
		ActividadDeportiva actividad = buscarActividadDeportiva(nombreActividad);
		
		em.getTransaction().begin();
		actividad.setCosto(nuevoCosto);
		em.merge(actividad);
		em.getTransaction().commit();
		
	}
	
//========================= Hibernate getRankingActividades============================================
	   
	@Override
	public List<DtActividad> getRankingActividades() {
	    int i, j;
	    boolean swapped;
	    ActividadDeportiva temp; 
	    String consultaActividad= "SELECT a FROM ActividadDeportiva a";
		TypedQuery<ActividadDeportiva> queryActividad = em.createQuery(consultaActividad, ActividadDeportiva.class);
	    List<ActividadDeportiva> actividadesOrdenadas = new ArrayList<>(queryActividad.getResultList());

	    for (i = 0; i < actividadesOrdenadas.size() - 1; i++) {
	        swapped = false;
	        for (j = 0; j < actividadesOrdenadas.size() - 1 - i; j++) {
	            if (actividadesOrdenadas.get(j).getCantidadClases() < actividadesOrdenadas.get(j + 1).getCantidadClases()) {
	                temp = actividadesOrdenadas.get(j);
	                actividadesOrdenadas.set(j, actividadesOrdenadas.get(j + 1));
	                actividadesOrdenadas.set(j + 1, temp);
	                swapped = true;
	            }
	        }

	        if (!swapped) {
	            break;
	        }
	    }

	    List<DtActividad> rankingDtActividades = new ArrayList<>();
	    for (ActividadDeportiva actividad : actividadesOrdenadas) {
	        List<Clase> claseActividad = actividad.getArrayClase();
	        DtActividad dt = new DtActividad(claseActividad,actividad.getNombre(),actividad.getCosto(),actividad.getDescripcion());
	        rankingDtActividades.add(dt);
	    }

	    return rankingDtActividades;
	}
	
	
//========================= Hibernate getActividades============================================
   
	public List<DtActividad> getActividades() {
        // Consulta para obtener todas las actividades deportivas
        String jpql = "SELECT a FROM ActividadDeportiva a";
        TypedQuery<ActividadDeportiva> query = em.createQuery(jpql, ActividadDeportiva.class);

        // Ejecuta la consulta y obtén una lista de actividades deportivas
        List<ActividadDeportiva> actividades = query.getResultList();
        // Mapea las actividades a DtActividad y devuelve la lista resultante
        List<DtActividad> dtActividades = actividades.stream()
            .map(ActividadDeportiva::getDtActividad)
            .collect(Collectors.toList());

        return dtActividades;
    }

	

//=====================================================================	
	
	public boolean existeClaseEnActividad(String nombreActividad, String nombreClase) {
		boolean existe = false;
		ActividadDeportiva act = buscarActividadDeportiva(nombreActividad);
		List<Clase>clases = act.getArrayClase();
		for(Clase c : clases) {
			if(nombreClase.equals(c.getNombreClase()))
				existe=true;
		}
		return existe;
	}

//=====================================================================	

	@Override
	public List<DtClase> getarrDtClase(String nombreActividad) {
		List<DtClase> asd = new ArrayList<>();
		ActividadDeportiva a = buscarActividadDeportiva(nombreActividad);
		asd = a.getDtArrayClase();
		return asd;
	}
	
//========================= Hibernate existeActividad ============================================
	public boolean existeActividad(String nombreActividad) {
		Conexion conexion = Conexion.getInstancia();
		EntityManager em = conexion.getEntityManager();
        // Utiliza el método find del EntityManager para buscar la actividad por su nombre
        ActividadDeportiva actividad = em.find(ActividadDeportiva.class, nombreActividad);
        // Devuelve true si la actividad se encontró (actividad != null), de lo contrario, devuelve false
        return actividad != null;
    }

//=====================================================================	
	
	public DtActividad getDtActividad(String nombreActividad) {
		ActividadDeportiva actividad = buscarActividad(nombreActividad);
		
		return actividad.getDtActividad();
	}
}

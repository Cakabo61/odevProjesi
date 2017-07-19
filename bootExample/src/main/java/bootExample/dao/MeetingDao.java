package bootExample.dao;

import org.springframework.data.repository.CrudRepository;

import bootExample.model.Meeting;

public interface MeetingDao extends CrudRepository<Meeting, Integer>{

}

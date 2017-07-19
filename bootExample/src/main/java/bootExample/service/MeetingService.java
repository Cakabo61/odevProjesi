package bootExample.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bootExample.dao.MeetingDao;
import bootExample.model.Meeting;

@Service
@Transactional
public class MeetingService {

	private MeetingDao meetingDao;

	@Autowired
	public void setMeetingDao(MeetingDao meetingDao) {
		this.meetingDao = meetingDao;
	}

	public List<Meeting> findAll() {
		List<Meeting> meetings = new ArrayList<>();
		for (Meeting meeting : meetingDao.findAll()) {
			meetings.add(meeting);
		}
		return meetings;
	}

	public Meeting getMeeting(int id) {

		Meeting meeting = new Meeting();
		meeting = meetingDao.findOne(id);

		return meeting;
	}

	public void save(Meeting meeting) {
		meetingDao.save(meeting);
	}

	public void delete(int id) {
		meetingDao.delete(id);
	}
}

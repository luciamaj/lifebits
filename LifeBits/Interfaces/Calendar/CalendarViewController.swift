import UIKit
import CVCalendar

class CalendarViewController: BaseViewController, CVCalendarViewDelegate, CVCalendarMenuViewDelegate {
    
    @IBOutlet var menuView: CVCalendarMenuView!
    @IBOutlet var calendarView: CVCalendarView!
    @IBOutlet weak var prevBtn: UIBarButtonItem!
    @IBOutlet weak var nextBtn: UIBarButtonItem!
    
    private var currentCalendar: Calendar?
    
    override var viewModel: CalendarViewModel {
        guard let vm = super.viewModel as? CalendarViewModel else {
            fatalError("viewmodel of the wrong type")
        }
        return vm
    }
    
    override func awakeFromNib() {
        let timeZoneBias = 480 // (UTC+08:00)
        currentCalendar = Calendar(identifier: .gregorian)
        currentCalendar?.locale = Locale(identifier: "it_IT")
        if let timeZone = TimeZone(secondsFromGMT: -timeZoneBias * 60) {
            currentCalendar?.timeZone = timeZone
        }
    }
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidLoad()
        
        calendarView.delegate = self
        menuView.delegate = self
        
        // Appearance delegate [Unnecessary]
        calendarView.calendarAppearanceDelegate = self
        
        // Animator delegate [Unnecessary]
        calendarView.animatorDelegate = self
        
        // Menu delegate [Required]
        menuView.menuViewDelegate = self
        
        // Calendar delegate [Required]
        calendarView.calendarDelegate = self
        
        calendarView.toggleCurrentDayView()
        if let currentCalendar = currentCalendar {
             self.navigationItem.title = CVDate(date: Date(), calendar: currentCalendar).globalDescription
        }
    }
    
    func presentedDateUpdated(_ date: CVDate) {
        if navigationItem.title != date.globalDescription {
            self.navigationItem.title = date.globalDescription
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        menuView.commitMenuViewUpdate()
        calendarView.commitCalendarViewUpdate()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.layoutIfNeeded()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /// Required method to implement!
    func presentationMode() -> CalendarMode {
        return .monthView
    }
    
    /// Required method to implement!
    func firstWeekday() -> Weekday {
        return .monday
    }
    
    func calendar() -> Calendar? {
        return currentCalendar
    }
    
    func dayOfWeekTextColor(by weekday: Weekday) -> UIColor {
        return weekday == .sunday ? UIColor(red: 1.0, green: 0, blue: 0, alpha: 1.0) : UIColor.darkGray
    }
    
    @IBAction func loadPrevBtn(_ sender: Any) {
        calendarView.loadPreviousView()
    }
    
    @IBAction func loadNextBtn(_ sender: Any) {
        calendarView.loadNextView()
    }
}

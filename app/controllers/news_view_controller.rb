class NewsViewController < UITableViewController
  def viewDidLoad
    super
    setup_stylesheet
  end
  
  #Some stylsheet stuff

  def setup_stylesheet
    view.backgroundColor = UIColor.green
  end

  #table view data source
  def numberOfOSectionsInTableView(tableView)
    1
  end

  def tableView(tableView, numberOfRowsInSection:section)
    20
  end

  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    @reuseIdentifier ||= "CELL_IDENTIFIER"
    cell = tableView.dequeueReusableCellWithIdentifier(@reuseIdentifier)
    cell ||= UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault,reuseIdentifier:@reuseIdentifier)
    cell.textLabel.text = 'Hello world!'
    cell
  end 
end

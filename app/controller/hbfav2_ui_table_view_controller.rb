module HBFav2
  class UITableViewController < UITableViewController
    attr_accessor :tracked_view_name
    include HBFav2::GoogleAnalytics

    def viewDidAppear(animated)
      super
      track_pageview(@tracked_view_name)
    end
  end
end

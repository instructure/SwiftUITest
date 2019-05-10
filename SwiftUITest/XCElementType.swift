import Foundation
import XCTest

private enum ElementType : String, CaseIterable, CustomStringConvertible {
    var description: String {
        return String(describing: self.rawValue)
    }

    static var intToStr: [UInt: String] {
        var result = Dictionary<UInt, String>()
        var index = UInt(0)
        ElementType.allCases.forEach { (element) in
            result[index] = element.description
            index += 1
        }
        return result
    }

    static var strToInt: [String: UInt] {
        var result = Dictionary<String, UInt>()
        var index = UInt(0)
        ElementType.allCases.forEach { (element) in
            result[element.description] = index
            index += 1
        }
        return result
    }

    case any
    case other
    case application
    case group
    case window
    case sheet
    case drawer
    case alert
    case dialog
    case button
    case radioButton
    case radioGroup
    case checkBox
    case disclosureTriangle
    case popUpButton
    case comboBox
    case menuButton
    case toolbarButton
    case popover
    case keyboard
    case key
    case navigationBar
    case tabBar
    case tabGroup
    case toolbar
    case statusBar
    case table
    case tableRow
    case tableColumn
    case outline
    case outlineRow
    case browser
    case collectionView
    case slider
    case pageIndicator
    case progressIndicator
    case activityIndicator
    case segmentedControl
    case picker
    case pickerWheel
    case `switch`
    case toggle
    case link
    case image
    case icon
    case searchField
    case scrollView
    case scrollBar
    case staticText
    case textField
    case secureTextField
    case datePicker
    case textView
    case menu
    case menuItem
    case menuBar
    case menuBarItem
    case map
    case webView
    case incrementArrow
    case decrementArrow
    case timeline
    case ratingIndicator
    case valueIndicator
    case splitGroup
    case splitter
    case relevanceIndicator
    case colorWell
    case helpTag
    case matte
    case dockItem
    case ruler
    case rulerMarker
    case grid
    case levelIndicator
    case cell
    case layoutArea
    case layoutItem
    case handle
    case stepper
    case tab
    case touchBar
    case statusItem
}

// TODO: convert strings to/from XCUIElement.Types
public struct XCElementType  {
    public static func from(_ type: String) -> XCUIElement.ElementType {
        let found: ElementType  = ElementType.allCases.first { (ele) -> Bool in
            return ele.description == type
            } ?? ElementType.any

        let keyNumber = ElementType.strToInt[found.description] ?? 0
        return XCUIElement.ElementType.init(rawValue: keyNumber) ?? XCUIElement.ElementType.any
    }

    public static func from(_ index: UInt) -> String {
        return ElementType.intToStr[index] ?? ElementType.any.description
    }

    public static let any: String = ElementType.any.description
    public static let other: String = ElementType.other.description
    public static let application: String = ElementType.application.description
    public static let group: String = ElementType.group.description
    public static let window: String = ElementType.window.description
    public static let sheet: String = ElementType.sheet.description
    public static let drawer: String = ElementType.drawer.description
    public static let alert: String = ElementType.alert.description
    public static let dialog: String = ElementType.dialog.description
    public static let button: String = ElementType.button.description
    public static let radioButton: String = ElementType.radioButton.description
    public static let radioGroup: String = ElementType.radioGroup.description
    public static let checkBox: String = ElementType.checkBox.description
    public static let disclosureTriangle: String = ElementType.disclosureTriangle.description
    public static let popUpButton: String = ElementType.popUpButton.description
    public static let comboBox: String = ElementType.comboBox.description
    public static let menuButton: String = ElementType.menuButton.description
    public static let toolbarButton: String = ElementType.toolbarButton.description
    public static let popover: String = ElementType.popover.description
    public static let keyboard: String = ElementType.keyboard.description
    public static let key: String = ElementType.key.description
    public static let navigationBar: String = ElementType.navigationBar.description
    public static let tabBar: String = ElementType.tabBar.description
    public static let tabGroup: String = ElementType.tabGroup.description
    public static let toolbar: String = ElementType.toolbar.description
    public static let statusBar: String = ElementType.statusBar.description
    public static let table: String = ElementType.table.description
    public static let tableRow: String = ElementType.tableRow.description
    public static let tableColumn: String = ElementType.tableColumn.description
    public static let outline: String = ElementType.outline.description
    public static let outlineRow: String = ElementType.outlineRow.description
    public static let browser: String = ElementType.browser.description
    public static let collectionView: String = ElementType.collectionView.description
    public static let slider: String = ElementType.slider.description
    public static let pageIndicator: String = ElementType.pageIndicator.description
    public static let progressIndicator: String = ElementType.progressIndicator.description
    public static let activityIndicator: String = ElementType.activityIndicator.description
    public static let segmentedControl: String = ElementType.segmentedControl.description
    public static let picker: String = ElementType.picker.description
    public static let pickerWheel: String = ElementType.pickerWheel.description
    public static let `switch`: String = ElementType.switch.description
    public static let toggle: String = ElementType.toggle.description
    public static let link: String = ElementType.link.description
    public static let image: String = ElementType.image.description
    public static let icon: String = ElementType.icon.description
    public static let searchField: String = ElementType.searchField.description
    public static let scrollView: String = ElementType.scrollView.description
    public static let scrollBar: String = ElementType.scrollBar.description
    public static let staticText: String = ElementType.staticText.description
    public static let textField: String = ElementType.textField.description
    public static let secureTextField: String = ElementType.secureTextField.description
    public static let datePicker: String = ElementType.datePicker.description
    public static let textView: String = ElementType.textView.description
    public static let menu: String = ElementType.menu.description
    public static let menuItem: String = ElementType.menuItem.description
    public static let menuBar: String = ElementType.menuBar.description
    public static let menuBarItem: String = ElementType.menuBarItem.description
    public static let map: String = ElementType.map.description
    public static let webView: String = ElementType.webView.description
    public static let incrementArrow: String = ElementType.incrementArrow.description
    public static let decrementArrow: String = ElementType.decrementArrow.description
    public static let timeline: String = ElementType.timeline.description
    public static let ratingIndicator: String = ElementType.ratingIndicator.description
    public static let valueIndicator: String = ElementType.valueIndicator.description
    public static let splitGroup: String = ElementType.splitGroup.description
    public static let splitter: String = ElementType.splitter.description
    public static let relevanceIndicator: String = ElementType.relevanceIndicator.description
    public static let colorWell: String = ElementType.colorWell.description
    public static let helpTag: String = ElementType.helpTag.description
    public static let matte: String = ElementType.matte.description
    public static let dockItem: String = ElementType.dockItem.description
    public static let ruler: String = ElementType.ruler.description
    public static let rulerMarker: String = ElementType.rulerMarker.description
    public static let grid: String = ElementType.grid.description
    public static let levelIndicator: String = ElementType.levelIndicator.description
    public static let cell: String = ElementType.cell.description
    public static let layoutArea: String = ElementType.layoutArea.description
    public static let layoutItem: String = ElementType.layoutItem.description
    public static let handle: String = ElementType.handle.description
    public static let stepper: String = ElementType.stepper.description
    public static let tab: String = ElementType.tab.description
    public static let touchBar: String = ElementType.touchBar.description
    public static let statusItem: String = ElementType.statusItem.description
}

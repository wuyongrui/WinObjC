//******************************************************************************
//
// Copyright (c) 2015 Microsoft Corporation. All rights reserved.
//
// This code is licensed under the MIT License (MIT).
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//
//******************************************************************************

#import "UISliderViewController.h"
#import <UIKit/UISlider.h>

@implementation UISliderViewController {
    UISlider* _setValueSlider;
    UILabel* _valueChangeLabel;
    UILabel* _discontinuousSliderLabel;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Xaml Slider";
    [self tableView].allowsSelection = NO;
}

- (NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section {
    return 6;
}

- (CGFloat)tableView:(UITableView*)tableView heightForRowAtIndexPath:(NSIndexPath*)indexPath {
    if (indexPath.row == 2) {
        return 130;
    }

    return 100;
}

- (UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath {
    float xMargin = 20;
    float labelHeight = 40;
    float labelWidth = 450;
    float elementHeight = 50;

    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"MenuCell"];
    if (nil == cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MenuCell"];
    }

    if (indexPath.row == 0) {
        UILabel* label = [[UILabel alloc] initWithFrame:CGRectMake(xMargin, 0, labelWidth, labelHeight)];
        label.text = @"UISlider (initial = 0, min = 0, max = 1)";
        UISlider* simpleSlider = [[UISlider alloc] initWithFrame:CGRectMake(xMargin, labelHeight, 300, elementHeight)];
        [cell addSubview:simpleSlider];
        [cell addSubview:label];
    } else if (indexPath.row == 1) {
        UILabel* label = [[UILabel alloc] initWithFrame:CGRectMake(xMargin, 0, labelWidth, labelHeight)];
        label.text = @"UISlider (initial = 25 min=0, max=100)";

        UISlider* slider = [[UISlider alloc] initWithFrame:CGRectMake(xMargin, labelHeight, 300, elementHeight)];
        slider.maximumValue = 100;
        slider.minimumValue = 0;
        slider.value = 25;
        [cell addSubview:label];
        [cell addSubview:slider];
    } else if (indexPath.row == 2) {
        UILabel* label = [[UILabel alloc] initWithFrame:CGRectMake(xMargin, 0, labelWidth, labelHeight)];
        label.text = @"Click button to set value programmatically";

        _setValueSlider = [[UISlider alloc] initWithFrame:CGRectMake(xMargin, labelHeight, 300, elementHeight)];
        _setValueSlider.maximumValue = 100;
        _setValueSlider.minimumValue = 0;
        _setValueSlider.value = 25;
        [cell addSubview:label];
        [cell addSubview:_setValueSlider];

        UIButton* button = [[UIButton alloc] initWithFrame:CGRectMake(xMargin, labelHeight + 30, 250, labelHeight)];
        [button setTitle:@"Set value to 25" forState:UIControlStateNormal];
        [button addTarget:self action:@selector(_buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [cell addSubview:button];
    } else if (indexPath.row == 3) {
        UILabel* label = [[UILabel alloc] initWithFrame:CGRectMake(xMargin, 0, labelWidth, labelHeight)];
        label.text = @"UISlider (initial = 25 min= 20, max = 87)";

        UISlider* sliderWithMinMax = [[UISlider alloc] initWithFrame:CGRectMake(xMargin, labelHeight, 300, elementHeight)];
        sliderWithMinMax.maximumValue = 87;
        sliderWithMinMax.minimumValue = 20;
        sliderWithMinMax.value = 25;
        [cell addSubview:label];
        [cell addSubview:sliderWithMinMax];
    } else if (indexPath.row == 4) {
        _valueChangeLabel = [[UILabel alloc] initWithFrame:CGRectMake(xMargin, 0, labelWidth, labelHeight)];
        _valueChangeLabel.text = @"UISlider with value changed event";

        UISlider* slider = [[UISlider alloc] initWithFrame:CGRectMake(xMargin, labelHeight, 300, elementHeight)];
        slider.maximumValue = 100;
        slider.minimumValue = 0;
        slider.value = 25;

        // Add value changed event to slider
        [slider addTarget:self action:@selector(_sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
        [slider addTarget:self action:@selector(_sliderTouchUpInside:) forControlEvents:UIControlEventTouchUpInside];

        [cell addSubview:_valueChangeLabel];
        [cell addSubview:slider];
    } else if (indexPath.row == 5) {
        // left right and thumb images
        _discontinuousSliderLabel = [[UILabel alloc] initWithFrame:CGRectMake(xMargin, 0, labelWidth, labelHeight)];
        _discontinuousSliderLabel.text = @"UISlider, continuous=NO";

        UISlider* slider = [[UISlider alloc] initWithFrame:CGRectMake(xMargin, labelHeight, 300, elementHeight)];
        slider.maximumValue = 100;
        slider.minimumValue = 0;
        slider.value = 25;

        // add value changed event to slider
        [slider addTarget:self action:@selector(_sliderMoved:) forControlEvents:UIControlEventValueChanged];
        [slider setContinuous:false];
        [cell addSubview:_discontinuousSliderLabel];
        [cell addSubview:slider];
    }

    return cell;
}

- (void)_buttonClick:(UIButton*)button {
    _setValueSlider.value = 25;
}

- (void)_sliderValueChanged:(UISlider*)slider {
    _valueChangeLabel.text = [NSString stringWithFormat:@"UISlider current value = %f", slider.value];
}

- (void)_sliderMoved:(UISlider*)slider {
    _discontinuousSliderLabel.text = [NSString stringWithFormat:@"UISlider, continuous=NO,value= %f", slider.value];
}

- (void)_sliderTouchUpInside:(UISlider*)slider {
    NSLog(@"UIControlEventTouchUpInside control event called, slider current value = %f", slider.value);
}

@end
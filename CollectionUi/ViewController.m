//
//  ViewController.m
//  CollectionUi
//
//  Created by MAEDA HAJIME on 2014/03/25.
//  Copyright (c) 2014年 MAEDA HAJIME. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *Label01;

@property (weak, nonatomic) IBOutlet UILabel *Label02;

@property (weak, nonatomic) IBOutlet UILabel *Label03;

@property (weak, nonatomic) IBOutlet UILabel *Label04;

@property (weak, nonatomic) IBOutlet UILabel *Label05;


@property (strong, nonatomic) IBOutletCollection(UILabel) NSArray *lbCollection;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// [配列]ボタン押した時
- (IBAction)proc01:(id)sender {
    
    // オブジェクト格納
    UILabel *arr[] = {
        self.Label01,
        self.Label02,
        self.Label03,
        self.Label04,
        self.Label05
    };
    
    for (int i = 0; i < 5; i++) {
        
        // ラベルのアルファ値の変更 -0.1づつ引いていく
        arr[i].alpha -= 0.1;
    }
}

// [コレクションクラス]ボタン押した時
- (IBAction)proc02:(id)sender {
    
    // オブジェクト格納
    NSArray *arr = @[self.Label01,
                     self.Label02,
                     self.Label03,
                     self.Label04,
                     self.Label05
                     ];
    
    for (UILabel *vw in arr) {
        
        // アルファ値の変更 +0.1づつ足していく
        vw.alpha += 0.1;
    }
    
}

// [OutletCollection]ボタン押した時
- (IBAction)proc03:(id)sender {
    
    // OutletCollection
    NSArray *arr = self.lbCollection;
    
    for (UILabel *vw in arr) {
        
        // テキストの変更 +0.1づつ足していく
        vw.text = @"らべる";
    }
}

// [サブビュー]ボタン押した時
- (IBAction)proc04:(id)sender {
    
    //サブビュー取得
    NSArray *arr = self.view.subviews;
    
    for (id ctr in arr) {
        
        // クラス内容説明
        //NSLog(@"%@", [ctr description]);
        
        // 型判定(UILabel)
        if ([ctr isKindOfClass:[UILabel class]]) {
            
            // キャスト
            UILabel *vw = (UILabel *) ctr;
            
            // タグ判定 continue読み飛ばし
            if (vw.tag == 100)continue;
            
            // テキスト値の取得
            NSLog(@"%@", vw.text);
        }
    }
    
}

@end

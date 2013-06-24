.class public Lcom/zhangdan/app/activities/main/SelectePicActivity;
.super Lcom/zhangdan/app/activities/BaseActivity;
.source "SelectePicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zhangdan/app/img/AbstractPhotoSelectHandler$OnImageSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter;
    }
.end annotation


# instance fields
.field private mBgBmp:Landroid/graphics/Bitmap;

.field private mBgType:I

.field private final mBigArray:[I

.field private mBigImage:Landroid/widget/ImageView;

.field private mBmpFilePath:Ljava/lang/String;

.field private mGridView:Landroid/widget/GridView;

.field private mPhotoHandler:Lcom/zhangdan/app/img/PhotoSelectHandler;

.field private mSelResId:I

.field private final mSmallArray:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseActivity;-><init>()V

    .line 34
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mSmallArray:[I

    .line 39
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mBigArray:[I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mSelResId:I

    .line 160
    return-void

    .line 34
    nop

    :array_0
    .array-data 0x4
        0x3ft 0x1t 0x2t 0x7ft
        0x9t 0x1t 0x2t 0x7ft
        0x61t 0x3t 0x2t 0x7ft
        0x62t 0x3t 0x2t 0x7ft
        0x63t 0x3t 0x2t 0x7ft
        0x64t 0x3t 0x2t 0x7ft
        0x65t 0x3t 0x2t 0x7ft
        0x66t 0x3t 0x2t 0x7ft
        0x67t 0x3t 0x2t 0x7ft
        0x5ft 0x3t 0x2t 0x7ft
        0x60t 0x3t 0x2t 0x7ft
    .end array-data

    .line 39
    :array_1
    .array-data 0x4
        0xe5t 0x0t 0x2t 0x7ft
        0xe6t 0x0t 0x2t 0x7ft
        0xe7t 0x0t 0x2t 0x7ft
        0xe8t 0x0t 0x2t 0x7ft
        0xe9t 0x0t 0x2t 0x7ft
        0xeat 0x0t 0x2t 0x7ft
        0xebt 0x0t 0x2t 0x7ft
        0xe3t 0x0t 0x2t 0x7ft
        0xe4t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/main/SelectePicActivity;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mSmallArray:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/zhangdan/app/activities/main/SelectePicActivity;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mBigArray:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/zhangdan/app/activities/main/SelectePicActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mSelResId:I

    return v0
.end method

.method static synthetic access$202(Lcom/zhangdan/app/activities/main/SelectePicActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mSelResId:I

    return p1
.end method

.method static synthetic access$300(Lcom/zhangdan/app/activities/main/SelectePicActivity;)Lcom/zhangdan/app/img/PhotoSelectHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mPhotoHandler:Lcom/zhangdan/app/img/PhotoSelectHandler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/zhangdan/app/activities/main/SelectePicActivity;Lcom/zhangdan/app/img/PhotoSelectHandler;)Lcom/zhangdan/app/img/PhotoSelectHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mPhotoHandler:Lcom/zhangdan/app/img/PhotoSelectHandler;

    return-object p1
.end method

.method static synthetic access$402(Lcom/zhangdan/app/activities/main/SelectePicActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mBgType:I

    return p1
.end method

.method static synthetic access$500(Lcom/zhangdan/app/activities/main/SelectePicActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->setBigImage()V

    return-void
.end method

.method private initialView()V
    .locals 8

    .prologue
    .line 79
    const v7, 0x7f0900f3

    invoke-virtual {p0, v7}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 80
    .local v1, back:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v7, 0x7f0900f5

    invoke-virtual {p0, v7}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 82
    .local v5, save:Landroid/widget/Button;
    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v7, 0x7f0900f1

    invoke-virtual {p0, v7}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mBigImage:Landroid/widget/ImageView;

    .line 85
    iget-object v7, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mBigImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 86
    .local v4, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 87
    .local v2, dm:Landroid/util/DisplayMetrics;
    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 88
    .local v6, width:I
    move v3, v6

    .line 89
    .local v3, h:I
    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 90
    iget-object v7, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mBigImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    invoke-direct {p0}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->setBigImage()V

    .line 94
    const v7, 0x7f0900f6

    invoke-virtual {p0, v7}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/GridView;

    iput-object v7, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mGridView:Landroid/widget/GridView;

    .line 95
    new-instance v0, Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter;

    invoke-direct {v0, p0, p0}, Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter;-><init>(Lcom/zhangdan/app/activities/main/SelectePicActivity;Landroid/content/Context;)V

    .line 96
    .local v0, adapter:Lcom/zhangdan/app/activities/main/SelectePicActivity$GridViewBaseAdapter;
    iget-object v7, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v7, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    iget-object v7, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v7, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 98
    return-void
.end method

.method private setBigImage()V
    .locals 2

    .prologue
    .line 104
    iget v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mBgType:I

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mBigImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mSelResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mBigImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mBgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 112
    invoke-super {p0, p1, p2, p3}, Lcom/zhangdan/app/activities/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 113
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mPhotoHandler:Lcom/zhangdan/app/img/PhotoSelectHandler;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mPhotoHandler:Lcom/zhangdan/app/img/PhotoSelectHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zhangdan/app/img/PhotoSelectHandler;->onActivityResult(IILandroid/content/Intent;)V

    .line 115
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 140
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 158
    :goto_0
    :pswitch_0
    return-void

    .line 142
    :pswitch_1
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->finish()V

    goto :goto_0

    .line 145
    :pswitch_2
    iget v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mBgType:I

    invoke-static {p0, v1}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->setMainBgType(Landroid/content/Context;I)V

    .line 146
    iget v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mBgType:I

    if-nez v1, :cond_0

    .line 147
    iget v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mSelResId:I

    invoke-static {p0, v1}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->setMainBgRes(Landroid/content/Context;I)V

    .line 148
    const-string v1, ""

    invoke-static {p0, v1}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->setMainBgPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 153
    :goto_1
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->setResult(I)V

    .line 154
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->finish()V

    goto :goto_0

    .line 150
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->setMainBgRes(Landroid/content/Context;I)V

    .line 151
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mBmpFilePath:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->setMainBgPath(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x7f0900f3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const v2, 0x7f0200ea

    .line 57
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v1, 0x7f03003c

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->setContentView(I)V

    .line 60
    invoke-static {p0}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->getMainBgType(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mBgType:I

    .line 61
    iget v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mBgType:I

    if-nez v1, :cond_1

    .line 62
    invoke-static {p0}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->getMainBgRes(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mSelResId:I

    .line 63
    iget v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mSelResId:I

    if-nez v1, :cond_0

    .line 64
    iput v2, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mSelResId:I

    .line 75
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->initialView()V

    .line 76
    return-void

    .line 66
    :cond_1
    invoke-static {p0}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->getMainBgPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, path:Ljava/lang/String;
    invoke-static {}, Lcom/zhangdan/app/util/CommonMethod;->canUseSdCard()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 68
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mBgBmp:Landroid/graphics/Bitmap;

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mBgBmp:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 70
    const/4 v1, 0x0

    iput v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mBgType:I

    .line 71
    iput v2, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mSelResId:I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseActivity;->onDestroy()V

    .line 130
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mBgBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mBgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 132
    iput-object v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mBgBmp:Landroid/graphics/Bitmap;

    .line 134
    :cond_0
    iput-object v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mPhotoHandler:Lcom/zhangdan/app/img/PhotoSelectHandler;

    .line 135
    return-void
.end method

.method public onInageSelected(Landroid/content/Intent;Ljava/io/File;)V
    .locals 3
    .parameter "data"
    .parameter "file"

    .prologue
    .line 239
    if-nez p1, :cond_0

    .line 240
    const-string v1, "SelPhoto"

    const-string v2, "\u83b7\u53d6\u526a\u5207\u7684\u56fe\u5931\u8d25111..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string v1, "\u5f88\u62b1\u6b49\uff0c\u526a\u5207\u56fe\u7247\u5931\u8d25"

    invoke-static {p0, v1}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 265
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 245
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_3

    .line 246
    const-string v1, "SelPhoto"

    const-string v2, "\u6210\u529f\u83b7\u53d6\u526a\u5207\u7684\u56fe..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mBgBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mBgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 249
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mBgBmp:Landroid/graphics/Bitmap;

    .line 251
    :cond_1
    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mBgBmp:Landroid/graphics/Bitmap;

    .line 252
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mBgBmp:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 253
    const-string v1, "SelPhoto"

    const-string v2, "bmp is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 256
    :cond_2
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mBgBmp:Landroid/graphics/Bitmap;

    invoke-static {v1, p2}, Lcom/zhangdan/app/img/PhotoSelectHandler;->saveCroppedImage(Landroid/graphics/Bitmap;Ljava/io/File;)V

    .line 258
    const/4 v1, 0x1

    iput v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mBgType:I

    .line 259
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->mBmpFilePath:Ljava/lang/String;

    .line 260
    invoke-direct {p0}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->setBigImage()V

    goto :goto_0

    .line 262
    :cond_3
    const-string v1, "SelPhoto"

    const-string v2, "\u83b7\u53d6\u526a\u5207\u7684\u56fe\u5931\u8d25222..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseActivity;->onPause()V

    .line 125
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseActivity;->onResume()V

    .line 120
    return-void
.end method

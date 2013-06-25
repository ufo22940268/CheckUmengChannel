.class public Lcom/zhangdan/app/activities/setting/LockActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;
.source "LockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zhangdan/app/widget/LockView$OnInputPwdListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/setting/LockActivity$MyHandler;
    }
.end annotation


# static fields
.field private static final DIALOG_EXIT_CONFIRM:I = 0x64

.field private static final DIALOG_LOGOFF:I = 0x65

.field public static final EXTRA_KEY_SET_PWD_TYPE:Ljava/lang/String; = "set_pwd"


# instance fields
.field private mHasInputPwdCount:I

.field private mLockView:Lcom/zhangdan/app/widget/LockView;

.field private mMyHandler:Lcom/zhangdan/app/activities/setting/LockActivity$MyHandler;

.field private mPwd:Ljava/lang/String;

.field private mSetPwdType:I

.field private mTextViewBottomDesc:Landroid/widget/TextView;

.field private mTextViewDesc:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    .line 46
    iput v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mSetPwdType:I

    .line 49
    iput v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mHasInputPwdCount:I

    .line 54
    new-instance v0, Lcom/zhangdan/app/activities/setting/LockActivity$MyHandler;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/setting/LockActivity$MyHandler;-><init>(Lcom/zhangdan/app/activities/setting/LockActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mMyHandler:Lcom/zhangdan/app/activities/setting/LockActivity$MyHandler;

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/setting/LockActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/zhangdan/app/activities/setting/LockActivity;->exitApp()V

    return-void
.end method

.method static synthetic access$100(Lcom/zhangdan/app/activities/setting/LockActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mSetPwdType:I

    return v0
.end method

.method static synthetic access$200(Lcom/zhangdan/app/activities/setting/LockActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mHasInputPwdCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/zhangdan/app/activities/setting/LockActivity;)Lcom/zhangdan/app/widget/LockView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mLockView:Lcom/zhangdan/app/widget/LockView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zhangdan/app/activities/setting/LockActivity;)Lcom/zhangdan/app/activities/setting/LockActivity$MyHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mMyHandler:Lcom/zhangdan/app/activities/setting/LockActivity$MyHandler;

    return-object v0
.end method

.method private convertToPwdStr(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 271
    :cond_0
    const-string v3, ""

    .line 277
    :goto_0
    return-object v3

    .line 272
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 273
    .local v2, sb:Ljava/lang/StringBuffer;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 274
    .local v0, i:Ljava/lang/Integer;
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 275
    .end local v0           #i:Ljava/lang/Integer;
    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 276
    const-string v3, "convertToPwdStr"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private exitApp()V
    .locals 2

    .prologue
    .line 284
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 285
    .local v0, intentService:Landroid/content/Intent;
    const-string v1, "com.zhangdan.app.log_off"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 287
    return-void
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 157
    const v0, 0x7f0900cd

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/setting/LockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/widget/LockView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mLockView:Lcom/zhangdan/app/widget/LockView;

    .line 158
    const v0, 0x7f0900ce

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/setting/LockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mTextViewDesc:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f0900cf

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/setting/LockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mTextViewBottomDesc:Landroid/widget/TextView;

    .line 160
    return-void
.end method

.method private initViews()V
    .locals 5

    .prologue
    const v4, 0x7f090039

    const/4 v3, 0x0

    .line 163
    const v1, 0x7f09003c

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/setting/LockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f070174

    invoke-static {v1, v2}, Lcom/zhangdan/app/activities/CommTitleMgr;->displayDarkTitle(Landroid/view/View;I)V

    .line 165
    const v1, 0x7f0900d0

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/setting/LockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 166
    .local v0, btnClearLock:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mLockView:Lcom/zhangdan/app/widget/LockView;

    invoke-virtual {v1, p0}, Lcom/zhangdan/app/widget/LockView;->setOnInputPwdListener(Lcom/zhangdan/app/widget/LockView$OnInputPwdListener;)V

    .line 168
    iget v1, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mSetPwdType:I

    if-nez v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mTextViewDesc:Landroid/widget/TextView;

    const-string v2, "\u8bf7\u7ed8\u5236\u52a0\u5bc6\u56fe\u6848"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/setting/LockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget v1, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mSetPwdType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 172
    const v1, 0x7f0901e3

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/setting/LockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mTextViewDesc:Landroid/widget/TextView;

    const-string v2, "\u8bf7\u7ed8\u5236\u52a0\u5bc6\u56fe\u6848"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    const-string v1, "\u5fd8\u8bb0\u5bc6\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 177
    :cond_2
    iget v1, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mSetPwdType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 178
    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/setting/LockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 180
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 182
    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mTextViewDesc:Landroid/widget/TextView;

    const-string v2, "\u8bf7\u7ed8\u5236\u539f\u52a0\u5bc6\u56fe\u6848"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mTextViewBottomDesc:Landroid/widget/TextView;

    const-string v2, "\u539f\u52a0\u5bc6\u56fe\u6848\u7ed8\u5236\u6b63\u786e\u540e\uff0c\u60a8\u53ef\u4ee5\u9009\u62e9\u5173\u95ed\u5bc6\u7801\u9501"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 79
    iget v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mSetPwdType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 80
    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/app/activities/setting/LockActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/setting/LockActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090039

    if-ne v0, v1, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/setting/LockActivity;->finish()V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0900d0

    if-ne v0, v1, :cond_0

    .line 192
    const/16 v0, 0x65

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/app/activities/setting/LockActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v1, 0x7f030034

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/setting/LockActivity;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/setting/LockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 62
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "set_pwd"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mSetPwdType:I

    .line 63
    if-eqz p1, :cond_0

    .line 64
    const-string v1, "set_pwd_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mSetPwdType:I

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/zhangdan/app/activities/setting/LockActivity;->findViews()V

    .line 68
    invoke-direct {p0}, Lcom/zhangdan/app/activities/setting/LockActivity;->initViews()V

    .line 69
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "id"
    .parameter "args"

    .prologue
    const v6, 0x7f070022

    const v5, 0x7f070001

    const/4 v4, 0x2

    const v3, 0x7f0c0024

    .line 88
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 89
    new-instance v0, Lcom/zhangdan/app/widget/CustomAlertDialog;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/widget/CustomAlertDialog;-><init>(Landroid/content/Context;)V

    .line 90
    .local v0, dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;
    const v1, 0x7f070160

    invoke-virtual {v0, v1, v3}, Lcom/zhangdan/app/widget/CustomAlertDialog;->setDialogContent(II)V

    .line 91
    new-instance v1, Lcom/zhangdan/app/activities/setting/LockActivity$1;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/setting/LockActivity$1;-><init>(Lcom/zhangdan/app/activities/setting/LockActivity;)V

    new-instance v2, Lcom/zhangdan/app/activities/setting/LockActivity$2;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/activities/setting/LockActivity$2;-><init>(Lcom/zhangdan/app/activities/setting/LockActivity;)V

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/zhangdan/app/widget/CustomAlertDialog;->setDialogButton(IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 132
    .end local v0           #dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;
    :goto_0
    return-object v0

    .line 104
    :cond_0
    const/16 v1, 0x65

    if-ne p1, v1, :cond_4

    .line 105
    new-instance v0, Lcom/zhangdan/app/widget/CustomAlertDialog;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/widget/CustomAlertDialog;-><init>(Landroid/content/Context;)V

    .line 106
    .restart local v0       #dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;
    iget v1, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mSetPwdType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mSetPwdType:I

    if-ne v1, v4, :cond_3

    iget v1, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mHasInputPwdCount:I

    if-nez v1, :cond_3

    .line 107
    :cond_1
    const v1, 0x7f070161

    invoke-virtual {v0, v1, v3}, Lcom/zhangdan/app/widget/CustomAlertDialog;->setDialogContent(II)V

    .line 111
    :cond_2
    :goto_1
    new-instance v1, Lcom/zhangdan/app/activities/setting/LockActivity$3;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/setting/LockActivity$3;-><init>(Lcom/zhangdan/app/activities/setting/LockActivity;)V

    new-instance v2, Lcom/zhangdan/app/activities/setting/LockActivity$4;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/activities/setting/LockActivity$4;-><init>(Lcom/zhangdan/app/activities/setting/LockActivity;)V

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/zhangdan/app/widget/CustomAlertDialog;->setDialogButton(IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 108
    :cond_3
    iget v1, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mSetPwdType:I

    if-ne v1, v4, :cond_2

    .line 109
    const v1, 0x7f070162

    invoke-virtual {v0, v1, v3}, Lcom/zhangdan/app/widget/CustomAlertDialog;->setDialogContent(II)V

    goto :goto_1

    .line 132
    .end local v0           #dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 291
    const/4 v0, 0x1

    return v0
.end method

.method public onInputPwd(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, pwdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const-wide/16 v9, 0x1f4

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 198
    iget v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mSetPwdType:I

    if-nez v4, :cond_5

    .line 199
    iget v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mHasInputPwdCount:I

    if-nez v4, :cond_3

    .line 200
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v8, :cond_2

    .line 201
    :cond_0
    iget-object v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mTextViewDesc:Landroid/widget/TextView;

    const-string v5, "\u5bc6\u7801\u592a\u77ed\uff0c\u6700\u5c114\u4f4d\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165\uff01"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    :cond_1
    :goto_0
    return-void

    .line 204
    :cond_2
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/setting/LockActivity;->convertToPwdStr(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mPwd:Ljava/lang/String;

    .line 205
    iget-object v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mTextViewDesc:Landroid/widget/TextView;

    const-string v5, "\u8bf7\u518d\u6b21\u7ed8\u5236\u52a0\u5bc6\u56fe\u6848"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mHasInputPwdCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mHasInputPwdCount:I

    goto :goto_0

    .line 208
    :cond_3
    iget v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mHasInputPwdCount:I

    if-ne v4, v5, :cond_1

    .line 209
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/setting/LockActivity;->convertToPwdStr(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, p:Ljava/lang/String;
    iget-object v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mPwd:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 211
    iget-object v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mTextViewDesc:Landroid/widget/TextView;

    const-string v5, "\u4e0e\u4e0a\u6b21\u7ed8\u5236\u4e0d\u4e00\u81f4\uff0c\u8bf7\u91cd\u65b0\u7ed8\u5236\uff01"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 214
    :cond_4
    iget v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mHasInputPwdCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mHasInputPwdCount:I

    .line 215
    const-string v4, "\u5bc6\u7801\u8bbe\u7f6e\u6210\u529f"

    invoke-static {p0, v4}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 216
    iget-object v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mPwd:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->setLocalPwd(Landroid/content/Context;Ljava/lang/String;)V

    .line 217
    iget-object v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mLockView:Lcom/zhangdan/app/widget/LockView;

    invoke-virtual {v4, v6}, Lcom/zhangdan/app/widget/LockView;->setEnabled(Z)V

    .line 218
    iget-object v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mMyHandler:Lcom/zhangdan/app/activities/setting/LockActivity$MyHandler;

    invoke-virtual {v4, v5, v9, v10}, Lcom/zhangdan/app/activities/setting/LockActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 220
    .end local v2           #p:Ljava/lang/String;
    :cond_5
    iget v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mSetPwdType:I

    if-ne v4, v5, :cond_7

    .line 221
    iget v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mHasInputPwdCount:I

    if-nez v4, :cond_1

    .line 222
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/setting/LockActivity;->convertToPwdStr(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, pwd:Ljava/lang/String;
    invoke-static {p0}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->getLocalPwd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, localPwd:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 225
    iget-object v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mTextViewDesc:Landroid/widget/TextView;

    const-string v5, "\u52a0\u5bc6\u56fe\u6848\u7ed8\u5236\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u7ed8\u5236\uff01"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 228
    :cond_6
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/setting/LockActivity;->finish()V

    .line 229
    const v4, 0x7f040005

    const v5, 0x7f040006

    invoke-virtual {p0, v4, v5}, Lcom/zhangdan/app/activities/setting/LockActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 231
    .end local v1           #localPwd:Ljava/lang/String;
    .end local v3           #pwd:Ljava/lang/String;
    :cond_7
    iget v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mSetPwdType:I

    if-ne v4, v7, :cond_1

    .line 232
    iget v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mHasInputPwdCount:I

    if-nez v4, :cond_9

    .line 233
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/setting/LockActivity;->convertToPwdStr(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 234
    .restart local v3       #pwd:Ljava/lang/String;
    invoke-static {p0}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->getLocalPwd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 235
    .restart local v1       #localPwd:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 236
    iget-object v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mTextViewDesc:Landroid/widget/TextView;

    const-string v5, "\u539f\u52a0\u5bc6\u56fe\u6848\u7ed8\u5236\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u7ed8\u5236\uff01"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 239
    :cond_8
    const v4, 0x7f0900d0

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/setting/LockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 240
    .local v0, btnClear:Landroid/widget/Button;
    const-string v4, "\u6e05\u9664\u5bc6\u7801"

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 241
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 242
    iget v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mHasInputPwdCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mHasInputPwdCount:I

    .line 243
    iget-object v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mTextViewDesc:Landroid/widget/TextView;

    const-string v5, "\u8bf7\u7ed8\u5236\u65b0\u52a0\u5bc6\u56fe\u6848"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mTextViewBottomDesc:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 245
    .end local v0           #btnClear:Landroid/widget/Button;
    .end local v1           #localPwd:Ljava/lang/String;
    .end local v3           #pwd:Ljava/lang/String;
    :cond_9
    iget v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mHasInputPwdCount:I

    if-ne v4, v5, :cond_c

    .line 246
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v8, :cond_b

    .line 247
    :cond_a
    iget-object v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mTextViewDesc:Landroid/widget/TextView;

    const-string v5, "\u5bc6\u7801\u592a\u77ed\uff0c\u6700\u5c114\u4f4d\uff0c\u8bf7\u91cd\u65b0\u7ed8\u5236\uff01"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 250
    :cond_b
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/setting/LockActivity;->convertToPwdStr(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mPwd:Ljava/lang/String;

    .line 251
    iget-object v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mTextViewDesc:Landroid/widget/TextView;

    const-string v5, "\u8bf7\u518d\u6b21\u7ed8\u5236\u52a0\u5bc6\u56fe\u6848"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mHasInputPwdCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mHasInputPwdCount:I

    goto/16 :goto_0

    .line 253
    :cond_c
    iget v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mHasInputPwdCount:I

    if-ne v4, v7, :cond_1

    .line 254
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/setting/LockActivity;->convertToPwdStr(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 255
    .restart local v2       #p:Ljava/lang/String;
    iget-object v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mPwd:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 256
    iget-object v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mTextViewDesc:Landroid/widget/TextView;

    const-string v5, "\u4e0e\u4e0a\u6b21\u7ed8\u5236\u4e0d\u4e00\u81f4\uff0c\u8bf7\u91cd\u65b0\u7ed8\u5236\uff01"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 259
    :cond_d
    iget v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mHasInputPwdCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mHasInputPwdCount:I

    .line 260
    const-string v4, "\u65b0\u5bc6\u7801\u8bbe\u7f6e\u6210\u529f"

    invoke-static {p0, v4}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 261
    iget-object v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mPwd:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->setLocalPwd(Landroid/content/Context;Ljava/lang/String;)V

    .line 262
    iget-object v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mLockView:Lcom/zhangdan/app/widget/LockView;

    invoke-virtual {v4, v6}, Lcom/zhangdan/app/widget/LockView;->setEnabled(Z)V

    .line 263
    iget-object v4, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mMyHandler:Lcom/zhangdan/app/activities/setting/LockActivity$MyHandler;

    invoke-virtual {v4, v5, v9, v10}, Lcom/zhangdan/app/activities/setting/LockActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method protected onRestartFromBackground()V
    .locals 0

    .prologue
    .line 300
    return-void
.end method

.method protected onRunToBackground()V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 74
    const-string v0, "set_pwd_type"

    iget v1, p0, Lcom/zhangdan/app/activities/setting/LockActivity;->mSetPwdType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    return-void
.end method

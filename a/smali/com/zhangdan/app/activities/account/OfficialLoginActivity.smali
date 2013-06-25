.class public Lcom/zhangdan/app/activities/account/OfficialLoginActivity;
.super Lcom/zhangdan/app/activities/BaseActivity;
.source "OfficialLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/account/OfficialLoginActivity$RegisterTask;,
        Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;
    }
.end annotation


# static fields
.field public static final EXTRAK_KEY_LOGIN_FLAG:Ljava/lang/String; = "login_flag"

.field private static final SHOW_PASSWORD:Ljava/lang/String; = "******"


# instance fields
.field private mBtnLogin:Landroid/widget/Button;

.field private mBtnRegister:Landroid/widget/Button;

.field private mBtnSubmit:Landroid/widget/Button;

.field private mEtName:Landroid/widget/EditText;

.field private mEtPwd:Landroid/widget/EditText;

.field private mFlag:I

.field private mHistoryUserList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/UserHisInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mImgDropDown:Landroid/widget/ImageView;

.field private mIsLogin:Z

.field private mPwd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseActivity;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mIsLogin:Z

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mFlag:I

    .line 339
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mEtPwd:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mHistoryUserList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mEtName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mPwd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mPwd:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mFlag:I

    return v0
.end method

.method private displayLoginView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 121
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mIsLogin:Z

    .line 122
    iget-object v2, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mHistoryUserList:Ljava/util/List;

    if-nez v2, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangdan/app/data/db/util/UserHistoryUtil;->query(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mHistoryUserList:Ljava/util/List;

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mBtnLogin:Landroid/widget/Button;

    const v3, 0x7f02026b

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 125
    iget-object v2, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mBtnRegister:Landroid/widget/Button;

    const v3, 0x7f02031d

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 126
    iget-object v2, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mBtnSubmit:Landroid/widget/Button;

    const v3, 0x7f07001f

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 128
    iget-object v2, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mHistoryUserList:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mHistoryUserList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 129
    iget-object v2, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mImgDropDown:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object v2, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mHistoryUserList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/UserHisInfo;

    .line 132
    .local v1, userInfo:Lcom/zhangdan/app/data/model/UserHisInfo;
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserHisInfo;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, account:Ljava/lang/String;
    iget-object v2, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mEtName:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserHisInfo;->getPwd()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mPwd:Ljava/lang/String;

    .line 135
    iget-object v2, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mPwd:Ljava/lang/String;

    invoke-static {v2}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 136
    iget-object v2, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mEtPwd:Landroid/widget/EditText;

    const-string v3, "******"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .end local v0           #account:Ljava/lang/String;
    .end local v1           #userInfo:Lcom/zhangdan/app/data/model/UserHisInfo;
    :cond_1
    :goto_0
    return-void

    .line 139
    :cond_2
    iget-object v2, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mImgDropDown:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private displayRegisterView()V
    .locals 2

    .prologue
    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mIsLogin:Z

    .line 148
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mBtnLogin:Landroid/widget/Button;

    const v1, 0x7f02026c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 149
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mBtnRegister:Landroid/widget/Button;

    const v1, 0x7f02031c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 150
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mBtnSubmit:Landroid/widget/Button;

    const v1, 0x7f07002a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 151
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mImgDropDown:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mEtName:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mEtPwd:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 154
    return-void
.end method

.method private doCommLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "username"
    .parameter "pwd"

    .prologue
    .line 195
    invoke-static {p1}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const v0, 0x7f07002f

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 205
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-static {p2}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    const v0, 0x7f070030

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_1
    const-string v0, "51_real_login_click"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 204
    new-instance v0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;-><init>(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    goto :goto_0
.end method

.method private doRegister(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "username"
    .parameter "password"

    .prologue
    const/4 v1, 0x4

    .line 311
    invoke-static {p1}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    const v0, 0x7f07011c

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 337
    :goto_0
    return-void

    .line 315
    :cond_0
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    const v0, 0x7f07011d

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_2

    .line 320
    const v0, 0x7f07011e

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_2
    invoke-static {p2}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 324
    const v0, 0x7f07011f

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :cond_3
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 328
    const v0, 0x7f070120

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_5

    .line 332
    const v0, 0x7f070121

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :cond_5
    const-string v0, "51_real_login_click"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 336
    new-instance v0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$RegisterTask;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$RegisterTask;-><init>(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$RegisterTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    goto :goto_0
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 78
    const v0, 0x7f0900d2

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mBtnLogin:Landroid/widget/Button;

    .line 79
    const v0, 0x7f0900d3

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mBtnRegister:Landroid/widget/Button;

    .line 80
    const v0, 0x7f0900d6

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mImgDropDown:Landroid/widget/ImageView;

    .line 81
    const v0, 0x7f0900db

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mBtnSubmit:Landroid/widget/Button;

    .line 82
    const v0, 0x7f0900d5

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mEtName:Landroid/widget/EditText;

    .line 83
    const v0, 0x7f0900d8

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mEtPwd:Landroid/widget/EditText;

    .line 84
    return-void
.end method

.method private initContentViews()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mImgDropDown:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mBtnSubmit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mEtName:Landroid/widget/EditText;

    new-instance v1, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$1;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$1;-><init>(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 110
    iget v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mFlag:I

    if-nez v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->displayLoginView()V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->displayRegisterView()V

    goto :goto_0
.end method

.method private initTitleBtns()V
    .locals 2

    .prologue
    const v1, 0x7f0900d1

    .line 87
    const v0, 0x7f09008c

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mBtnLogin:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mBtnRegister:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mFlag:I

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private onClickDropdownView()V
    .locals 6

    .prologue
    .line 211
    iget-object v5, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mHistoryUserList:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mHistoryUserList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 215
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f070032

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 216
    iget-object v5, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mHistoryUserList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 217
    .local v4, users:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mHistoryUserList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 218
    iget-object v5, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mHistoryUserList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/data/model/UserHisInfo;

    .line 219
    .local v2, info:Lcom/zhangdan/app/data/model/UserHisInfo;
    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/UserHisInfo;->getAccount()Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, temp:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 221
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v1

    .line 217
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 223
    .end local v2           #info:Lcom/zhangdan/app/data/model/UserHisInfo;
    .end local v3           #temp:Ljava/lang/String;
    :cond_3
    new-instance v5, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$2;

    invoke-direct {v5, p0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$2;-><init>(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 235
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 159
    .local v0, id:I
    sparse-switch v0, :sswitch_data_0

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 161
    :sswitch_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->finish()V

    goto :goto_0

    .line 164
    :sswitch_1
    iget-boolean v3, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mIsLogin:Z

    if-nez v3, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->displayLoginView()V

    goto :goto_0

    .line 170
    :sswitch_2
    iget-boolean v3, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mIsLogin:Z

    if-eqz v3, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->displayRegisterView()V

    goto :goto_0

    .line 176
    :sswitch_3
    invoke-direct {p0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->onClickDropdownView()V

    goto :goto_0

    .line 179
    :sswitch_4
    iget-object v3, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mEtName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, username:Ljava/lang/String;
    iget-object v3, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mEtPwd:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, password:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mIsLogin:Z

    if-eqz v3, :cond_2

    .line 182
    const-string v3, "******"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    iget-object v1, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mPwd:Ljava/lang/String;

    .line 185
    :cond_1
    invoke-direct {p0, v2, v1}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->doCommLogin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_2
    invoke-direct {p0, v2, v1}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->doRegister(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :sswitch_data_0
    .sparse-switch
        0x7f09008c -> :sswitch_0
        0x7f0900d2 -> :sswitch_1
        0x7f0900d3 -> :sswitch_2
        0x7f0900d6 -> :sswitch_3
        0x7f0900db -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "login_flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mFlag:I

    .line 72
    invoke-direct {p0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->findViews()V

    .line 73
    invoke-direct {p0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->initTitleBtns()V

    .line 74
    invoke-direct {p0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->initContentViews()V

    .line 75
    return-void
.end method

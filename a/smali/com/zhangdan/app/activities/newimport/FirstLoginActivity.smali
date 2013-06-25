.class public Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;
.super Lcom/zhangdan/app/activities/BaseActivity;
.source "FirstLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private mAnimIn:Landroid/view/animation/Animation;

.field private mAnimOut:Landroid/view/animation/Animation;

.field private mAnimating:Z

.field private mHandler:Landroid/os/Handler;

.field private mLayoutContent1:Landroid/widget/RelativeLayout;

.field private mLayoutContent2:Landroid/widget/RelativeLayout;

.field private mLayoutTitle1:Landroid/widget/RelativeLayout;

.field private mLayoutTitle2:Landroid/widget/RelativeLayout;

.field private mLayoutTitle2Ref:Landroid/widget/RelativeLayout;

.field private mMailLoginView:Lcom/zhangdan/app/activities/newimport/MailLoginView;

.field private mOldUserLoginView:Lcom/zhangdan/app/activities/newimport/OldUserLoginView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseActivity;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->hideOldUserLoginContent()V

    return-void
.end method

.method private dispalyOldUesrLoginView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mLayoutContent1:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mLayoutContent2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mLayoutTitle2:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mLayoutTitle2Ref:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 77
    return-void
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 106
    const v0, 0x7f0900b4

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mLayoutTitle1:Landroid/widget/RelativeLayout;

    .line 107
    const v0, 0x7f0900b7

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mLayoutTitle2:Landroid/widget/RelativeLayout;

    .line 108
    const v0, 0x7f0900b6

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mLayoutTitle2Ref:Landroid/widget/RelativeLayout;

    .line 109
    const v0, 0x7f0901ff

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mLayoutContent1:Landroid/widget/RelativeLayout;

    .line 110
    const v0, 0x7f090204

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mLayoutContent2:Landroid/widget/RelativeLayout;

    .line 111
    return-void
.end method

.method private hideOldUserLoginContent()V
    .locals 12

    .prologue
    .line 170
    const v1, 0x7f0900b8

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f020232

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 171
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mLayoutContent1:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 172
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mLayoutContent2:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 173
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f80

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 174
    .local v0, anim1:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 175
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mLayoutContent2:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 177
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mLayoutTitle2:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v10

    .line 178
    .local v10, fromYValue:I
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mLayoutTitle1:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v11

    .line 179
    .local v11, toYValue:I
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mLayoutTitle2Ref:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 180
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mLayoutTitle2:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 181
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sub-int v7, v11, v10

    int-to-float v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v1, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mAnimOut:Landroid/view/animation/Animation;

    .line 182
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mAnimOut:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 183
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mAnimOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 184
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mAnimOut:Landroid/view/animation/Animation;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 185
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mAnimOut:Landroid/view/animation/Animation;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 186
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mLayoutTitle2:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mAnimOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 187
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mLayoutTitle1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mLayoutTitle2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mLayoutTitle2Ref:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    new-instance v0, Lcom/zhangdan/app/activities/newimport/MailLoginView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mLayoutContent1:Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/app/activities/newimport/MailLoginView;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mMailLoginView:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    .line 119
    new-instance v0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mLayoutContent2:Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mOldUserLoginView:Lcom/zhangdan/app/activities/newimport/OldUserLoginView;

    .line 120
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/zhangdan/app/activities/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 82
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mMailLoginView:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mOldUserLoginView:Lcom/zhangdan/app/activities/newimport/OldUserLoginView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 196
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mAnimIn:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mLayoutContent1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mLayoutTitle2:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mLayoutTitle2Ref:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 203
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mAnimating:Z

    .line 204
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mAnimOut:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mLayoutContent2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 207
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mAnimating:Z

    .line 192
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mMailLoginView:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->isHideImportDesc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mMailLoginView:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->displayImportDesc()V

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0900b4

    if-ne v0, v1, :cond_4

    .line 125
    iget-boolean v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mAnimating:Z

    if-eqz v0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mLayoutTitle2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mLayoutTitle2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 129
    :cond_2
    invoke-direct {p0}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->hideOldUserLoginContent()V

    goto :goto_0

    .line 131
    :cond_3
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->showOldUserLoginContent()V

    goto :goto_0

    .line 133
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0900b7

    if-ne v0, v1, :cond_5

    .line 134
    iget-boolean v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mAnimating:Z

    if-nez v0, :cond_0

    .line 136
    const-string v0, "olduser_login"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->showOldUserLoginContent()V

    goto :goto_0

    .line 138
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0900b6

    if-ne v0, v1, :cond_0

    .line 139
    iget-boolean v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mAnimating:Z

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mLayoutTitle2Ref:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->hideOldUserLoginContent()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v2, 0x7f03002f

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->setContentView(I)V

    .line 48
    invoke-direct {p0}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->findViews()V

    .line 49
    invoke-direct {p0}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->initViews()V

    .line 51
    invoke-static {p0}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->getFirstUseFlag(Landroid/content/Context;)I

    move-result v0

    .line 53
    .local v0, firstUseFlag:I
    if-nez v0, :cond_1

    .line 54
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->setFirstUseFlag(Landroid/content/Context;I)V

    .line 55
    invoke-direct {p0}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->dispalyOldUesrLoginView()V

    .line 56
    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity$1;

    invoke-direct {v3, p0}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity$1;-><init>(Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-static {p0}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->getAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, from:Ljava/lang/String;
    invoke-static {v1}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "quick"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->dispalyOldUesrLoginView()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseActivity;->onDestroy()V

    .line 90
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mMailLoginView:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->destroy()V

    .line 91
    iput-object v1, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mMailLoginView:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    .line 92
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mOldUserLoginView:Lcom/zhangdan/app/activities/newimport/OldUserLoginView;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->destroy()V

    .line 93
    iput-object v1, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mOldUserLoginView:Lcom/zhangdan/app/activities/newimport/OldUserLoginView;

    .line 94
    return-void
.end method

.method public showOldUserLoginContent()V
    .locals 12

    .prologue
    .line 152
    const v1, 0x7f0900b8

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f020231

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 153
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mLayoutContent2:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 154
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 155
    .local v0, anim1:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 156
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mLayoutContent2:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 158
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mLayoutTitle2:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v10

    .line 159
    .local v10, fromYValue:I
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mLayoutTitle1:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v11

    .line 160
    .local v11, toYValue:I
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sub-int v9, v11, v10

    int-to-float v9, v9

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v1, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mAnimIn:Landroid/view/animation/Animation;

    .line 161
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mAnimIn:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 162
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mAnimIn:Landroid/view/animation/Animation;

    invoke-virtual {v1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 163
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mLayoutTitle2:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->mAnimIn:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 164
    return-void
.end method

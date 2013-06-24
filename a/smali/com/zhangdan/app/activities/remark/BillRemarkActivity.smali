.class public Lcom/zhangdan/app/activities/remark/BillRemarkActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;
.source "BillRemarkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/remark/BillRemarkActivity$SearchStoreTask;,
        Lcom/zhangdan/app/activities/remark/BillRemarkActivity$MyHandler;
    }
.end annotation


# static fields
.field private static final DIALOG_NITIFY_SAVE:I = 0x1

.field public static final EXTRA_KEY_CATEGORY_NAME:Ljava/lang/String; = "category_name"

.field public static final EXTRA_KEY_CUSTOM_CATEGORY_ID:Ljava/lang/String; = "custom_category_id"

.field public static final EXTRA_KEY_DESCRIPTION:Ljava/lang/String; = "desc"

.field public static final EXTRA_KEY_REMARK:Ljava/lang/String; = "remark"

.field public static final EXTRA_KEY_SHOPPNG_SHEET_ID:Ljava/lang/String; = "auto_id"

.field public static final EXTRA_KEY_STORE_NAME:Ljava/lang/String; = "store_name"

.field private static final MSG_SEARCH:I = 0x1

.field private static final MSG_SHOW_SOFT_KEYBOARD:I = 0x2

.field private static final REQ_SEL_CATEGORY_CODE:I = 0x64


# instance fields
.field private mAutoId:J

.field private mCurrCity:Ljava/lang/String;

.field private mCustomCategoryId:I

.field private mDesc:Ljava/lang/String;

.field private mEtRemark:Landroid/widget/EditText;

.field private mEtTopStoreName:Landroid/widget/EditText;

.field private mHasEdit:Z

.field private mLayoutEditRemark:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mMyHandler:Lcom/zhangdan/app/activities/remark/BillRemarkActivity$MyHandler;

.field private mRemark:Ljava/lang/String;

.field private mSearchStoreTask:Lcom/zhangdan/app/activities/remark/BillRemarkActivity$SearchStoreTask;

.field private mStoreAdapter:Lcom/zhangdan/app/activities/remark/StoreAdapter;

.field private mStoreName:Ljava/lang/String;

.field private mTvCategoryName:Landroid/widget/TextView;

.field private mTvStoreName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mHasEdit:Z

    .line 76
    new-instance v0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity$MyHandler;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity$MyHandler;-><init>(Lcom/zhangdan/app/activities/remark/BillRemarkActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mMyHandler:Lcom/zhangdan/app/activities/remark/BillRemarkActivity$MyHandler;

    .line 345
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/remark/BillRemarkActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mEtTopStoreName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zhangdan/app/activities/remark/BillRemarkActivity;)Lcom/zhangdan/app/activities/remark/StoreAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mStoreAdapter:Lcom/zhangdan/app/activities/remark/StoreAdapter;

    return-object v0
.end method

.method private initViews()V
    .locals 7

    .prologue
    const v6, 0x7f090097

    const/16 v5, 0x8

    .line 163
    const v3, 0x7f090093

    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v3, 0x7f090094

    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const v3, 0x7f090096

    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 167
    .local v2, tvOriginalDesc:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mDesc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    const v3, 0x7f090099

    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mTvStoreName:Landroid/widget/TextView;

    .line 170
    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mTvStoreName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mStoreName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mTvStoreName:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    const v3, 0x7f09009b

    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mEtRemark:Landroid/widget/EditText;

    .line 174
    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mEtRemark:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mRemark:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 176
    const v3, 0x7f09009a

    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mTvCategoryName:Landroid/widget/TextView;

    .line 177
    iget v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mCustomCategoryId:I

    invoke-static {p0, v3}, Lcom/zhangdan/app/data/db/util/ConsumeCategoryDbUtil;->queryCategoryName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, categoryName:Ljava/lang/String;
    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mTvCategoryName:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mTvCategoryName:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    const v3, 0x7f09009c

    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mLayoutEditRemark:Landroid/view/View;

    .line 182
    const v3, 0x7f09009f

    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mListView:Landroid/widget/ListView;

    .line 183
    const v3, 0x7f09009d

    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mEtTopStoreName:Landroid/widget/EditText;

    .line 184
    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mEtTopStoreName:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mStoreName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mLayoutEditRemark:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 187
    const v3, 0x7f09009e

    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mEtTopStoreName:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 190
    new-instance v3, Lcom/zhangdan/app/activities/remark/StoreAdapter;

    invoke-direct {v3, p0}, Lcom/zhangdan/app/activities/remark/StoreAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mStoreAdapter:Lcom/zhangdan/app/activities/remark/StoreAdapter;

    .line 191
    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mStoreAdapter:Lcom/zhangdan/app/activities/remark/StoreAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 192
    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 194
    invoke-virtual {p0, v6}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    const-string v3, "taobao"

    invoke-static {p0, v3}, Lcom/umeng/analytics/MobclickAgent;->getConfigParams(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, onlineConfigTabobao:Ljava/lang/String;
    const-string v3, "disabled"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    invoke-virtual {p0, v6}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 207
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mDesc:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mDesc:Ljava/lang/String;

    const-string v4, "\u652f\u4ed8\u5b9d"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    invoke-virtual {p0, v6}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 203
    const v3, 0x7f090098

    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p0, v6}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private unPackIntentExtras(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 91
    .local v0, data:Landroid/content/Intent;
    const-string v2, "auto_id"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mAutoId:J

    .line 92
    const-string v2, "desc"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mDesc:Ljava/lang/String;

    .line 93
    const-string v2, "custom_category_id"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mCustomCategoryId:I

    .line 94
    const-string v2, "store_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mStoreName:Ljava/lang/String;

    .line 95
    const-string v2, "remark"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mRemark:Ljava/lang/String;

    .line 96
    iget-wide v2, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mAutoId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    .line 97
    const-string v2, "auto_id"

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mAutoId:J

    .line 98
    const-string v2, "desc"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mDesc:Ljava/lang/String;

    .line 99
    const-string v2, "custom_category_id"

    invoke-virtual {p1, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mCustomCategoryId:I

    .line 100
    const-string v2, "store_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mStoreName:Ljava/lang/String;

    .line 101
    const-string v2, "remark"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mRemark:Ljava/lang/String;

    .line 105
    :cond_0
    iget-wide v2, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mAutoId:J

    invoke-static {p0, v2, v3}, Lcom/zhangdan/app/data/db/util/ShoppingSheetRemarkDbUtil;->queryShoppingSheetRemarkBySheetId(Landroid/content/Context;J)Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;

    move-result-object v1

    .line 106
    .local v1, remark:Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;
    if-eqz v1, :cond_1

    .line 107
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->getStoreName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mStoreName:Ljava/lang/String;

    .line 108
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->getRemark()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mRemark:Ljava/lang/String;

    .line 109
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->getCategoryId()I

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->getCategoryId()I

    move-result v2

    iput v2, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mCustomCategoryId:I

    .line 113
    :cond_1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 303
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 298
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 152
    invoke-super {p0, p1, p2, p3}, Lcom/zhangdan/app/activities/WrappedActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 153
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mHasEdit:Z

    .line 155
    if-eqz p3, :cond_0

    .line 156
    const-string v0, "custom_category_id"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mCustomCategoryId:I

    .line 157
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mTvCategoryName:Landroid/widget/TextView;

    const-string v1, "category_name"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 135
    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mLayoutEditRemark:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 136
    const v1, 0x7f090095

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 137
    const v1, 0x7f090038

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mLayoutEditRemark:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 148
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mEtRemark:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, currRemark:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mHasEdit:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mRemark:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 143
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->showDialog(I)V

    goto :goto_0

    .line 145
    :cond_2
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const v9, 0x7f090095

    const v8, 0x7f090038

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f090093

    if-ne v3, v4, :cond_3

    .line 235
    const-string v3, "yuan_remark_cancel"

    invoke-static {p0, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 236
    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mEtRemark:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, currRemark:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mHasEdit:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mRemark:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 238
    :cond_0
    invoke-virtual {p0, v7}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->showDialog(I)V

    .line 281
    .end local v0           #currRemark:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 241
    .restart local v0       #currRemark:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->finish()V

    goto :goto_0

    .line 242
    .end local v0           #currRemark:Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f090094

    if-ne v3, v4, :cond_4

    .line 243
    const-string v3, "yuan_remark_save"

    invoke-static {p0, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 244
    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mEtRemark:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mRemark:Ljava/lang/String;

    .line 245
    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mTvStoreName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mStoreName:Ljava/lang/String;

    .line 246
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 247
    .local v1, data:Landroid/content/Intent;
    const-string v3, "custom_category_id"

    iget v4, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mCustomCategoryId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    const-string v3, "store_name"

    iget-object v4, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mStoreName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string v3, "remark"

    iget-object v4, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mRemark:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v3, "auto_id"

    iget-wide v4, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mAutoId:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 251
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->setResult(ILandroid/content/Intent;)V

    .line 252
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->finish()V

    goto :goto_0

    .line 253
    .end local v1           #data:Landroid/content/Intent;
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f09009e

    if-ne v3, v4, :cond_5

    .line 254
    iput-boolean v7, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mHasEdit:Z

    .line 255
    invoke-virtual {p0, v9}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 256
    invoke-virtual {p0, v8}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mLayoutEditRemark:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 259
    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mStoreAdapter:Lcom/zhangdan/app/activities/remark/StoreAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/remark/StoreAdapter;->setStoreList(Ljava/util/List;)V

    .line 260
    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mEtTopStoreName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mStoreName:Ljava/lang/String;

    .line 261
    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mTvStoreName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mStoreName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 262
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f090099

    if-ne v3, v4, :cond_6

    .line 263
    const-string v3, "yuan_remark_edit_store_name"

    invoke-static {p0, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0, v9}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 265
    invoke-virtual {p0, v8}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mLayoutEditRemark:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 269
    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mMyHandler:Lcom/zhangdan/app/activities/remark/BillRemarkActivity$MyHandler;

    const/4 v4, 0x2

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 270
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f09009a

    if-ne v3, v4, :cond_7

    .line 271
    const-string v3, "yuan_remark_category"

    invoke-static {p0, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 272
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 273
    .local v2, intent:Landroid/content/Intent;
    const-class v3, Lcom/zhangdan/app/activities/remark/CategoryActivity;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 274
    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 275
    .end local v2           #intent:Landroid/content/Intent;
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f090097

    if-ne v3, v4, :cond_1

    .line 276
    const-string v3, "yuan_remark_bind_taobao"

    invoke-static {p0, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 277
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 278
    .restart local v2       #intent:Landroid/content/Intent;
    const-class v3, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 279
    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->setContentView(I)V

    .line 82
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->unPackIntentExtras(Landroid/os/Bundle;)V

    .line 84
    invoke-direct {p0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->initViews()V

    .line 86
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->getCurrentCity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mCurrCity:Ljava/lang/String;

    .line 87
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "id"
    .parameter "args"

    .prologue
    .line 211
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 212
    new-instance v0, Lcom/zhangdan/app/widget/CustomAlertDialog;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/widget/CustomAlertDialog;-><init>(Landroid/content/Context;)V

    .line 213
    .local v0, dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;
    const v1, 0x7f0700d0

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/widget/CustomAlertDialog;->setDialogTitle(I)V

    .line 214
    const v1, 0x7f070157

    const v2, 0x7f0c0024

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/widget/CustomAlertDialog;->setDialogContent(II)V

    .line 215
    const v1, 0x7f070159

    const v2, 0x7f07015a

    new-instance v3, Lcom/zhangdan/app/activities/remark/BillRemarkActivity$1;

    invoke-direct {v3, p0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity$1;-><init>(Lcom/zhangdan/app/activities/remark/BillRemarkActivity;)V

    new-instance v4, Lcom/zhangdan/app/activities/remark/BillRemarkActivity$2;

    invoke-direct {v4, p0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity$2;-><init>(Lcom/zhangdan/app/activities/remark/BillRemarkActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zhangdan/app/widget/CustomAlertDialog;->setDialogButton(IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 229
    .end local v0           #dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    .line 128
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mSearchStoreTask:Lcom/zhangdan/app/activities/remark/BillRemarkActivity$SearchStoreTask;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mSearchStoreTask:Lcom/zhangdan/app/activities/remark/BillRemarkActivity$SearchStoreTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity$SearchStoreTask;->cancel(Z)Z

    .line 131
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 365
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    .line 366
    .local v1, obj:Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 374
    :goto_0
    return-void

    :cond_0
    move-object v0, v1

    .line 368
    check-cast v0, Lcom/zhangdan/app/data/model/http/StoreInfo;

    .line 369
    .local v0, data:Lcom/zhangdan/app/data/model/http/StoreInfo;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 370
    .local v2, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/StoreInfo;->getBrandName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/StoreInfo;->getBrandName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 371
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/StoreInfo;->getBrandName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    :cond_1
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/StoreInfo;->getShopName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mEtTopStoreName:Landroid/widget/EditText;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 118
    const-string v0, "auto_id"

    iget-wide v1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mAutoId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 119
    const-string v0, "desc"

    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mDesc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v0, "custom_category_id"

    iget v1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mCustomCategoryId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    const-string v0, "store_name"

    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mStoreName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v0, "remark"

    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mRemark:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v3, 0x1

    .line 285
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mCurrCity:Ljava/lang/String;

    invoke-static {v0}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 287
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 288
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mMyHandler:Lcom/zhangdan/app/activities/remark/BillRemarkActivity$MyHandler;

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity$MyHandler;->removeMessages(I)V

    .line 289
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mMyHandler:Lcom/zhangdan/app/activities/remark/BillRemarkActivity$MyHandler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mStoreAdapter:Lcom/zhangdan/app/activities/remark/StoreAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/remark/StoreAdapter;->setStoreList(Ljava/util/List;)V

    goto :goto_0
.end method

.method public startSearch()V
    .locals 4

    .prologue
    .line 334
    new-instance v0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity$SearchStoreTask;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity$SearchStoreTask;-><init>(Lcom/zhangdan/app/activities/remark/BillRemarkActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mSearchStoreTask:Lcom/zhangdan/app/activities/remark/BillRemarkActivity$SearchStoreTask;

    .line 335
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mSearchStoreTask:Lcom/zhangdan/app/activities/remark/BillRemarkActivity$SearchStoreTask;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mCurrCity:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mEtTopStoreName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity$SearchStoreTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    .line 336
    return-void
.end method

.method public stopSearch()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mSearchStoreTask:Lcom/zhangdan/app/activities/remark/BillRemarkActivity$SearchStoreTask;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mSearchStoreTask:Lcom/zhangdan/app/activities/remark/BillRemarkActivity$SearchStoreTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity$SearchStoreTask;->cancel(Z)Z

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mSearchStoreTask:Lcom/zhangdan/app/activities/remark/BillRemarkActivity$SearchStoreTask;

    .line 343
    :cond_0
    return-void
.end method

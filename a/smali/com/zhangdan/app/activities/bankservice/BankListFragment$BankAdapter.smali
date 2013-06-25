.class Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;
.super Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;
.source "BankListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/bankservice/BankListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BankAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mCommList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/BankInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOtherList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/BankInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedPosition:I

.field private mSelectedSection:I

.field final synthetic this$0:Lcom/zhangdan/app/activities/bankservice/BankListFragment;


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/bankservice/BankListFragment;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/BankInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/BankInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, commList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/BankInfo;>;"
    .local p3, otherList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/BankInfo;>;"
    const/4 v0, -0x1

    .line 115
    iput-object p1, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;->this$0:Lcom/zhangdan/app/activities/bankservice/BankListFragment;

    invoke-direct {p0}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;-><init>()V

    .line 112
    iput v0, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;->mSelectedSection:I

    .line 113
    iput v0, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;->mSelectedPosition:I

    .line 116
    iput-object p2, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;->mCommList:Ljava/util/List;

    .line 117
    iput-object p3, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;->mOtherList:Ljava/util/List;

    .line 118
    return-void
.end method


# virtual methods
.method public getCountForSection(I)I
    .locals 2
    .parameter "section"

    .prologue
    const/4 v0, 0x0

    .line 148
    if-nez p1, :cond_2

    .line 149
    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;->mCommList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;->mCommList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 150
    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;->mOtherList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;->mOtherList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(II)Ljava/lang/Object;
    .locals 1
    .parameter "section"
    .parameter "position"

    .prologue
    .line 128
    if-nez p1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;->mCommList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    .line 130
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;->mOtherList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(II)J
    .locals 2
    .parameter "section"
    .parameter "position"

    .prologue
    .line 138
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "section"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 159
    move-object v2, p3

    .line 160
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_0

    .line 161
    iget-object v3, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;->this$0:Lcom/zhangdan/app/activities/bankservice/BankListFragment;

    invoke-virtual {v3}, Lcom/zhangdan/app/activities/bankservice/BankListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300ca

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 162
    new-instance v1, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter$ViewHolder;-><init>(Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;)V

    .line 163
    .local v1, holder:Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter$ViewHolder;
    const v3, 0x7f09017b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter$ViewHolder;->imgBankLogo:Landroid/widget/ImageView;

    .line 164
    const v3, 0x7f0902c1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter$ViewHolder;->tvBankName:Landroid/widget/TextView;

    .line 165
    const v3, 0x7f0902c2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter$ViewHolder;->imgArrow:Landroid/widget/ImageView;

    .line 166
    const v3, 0x7f0902c3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter$ViewHolder;->layoutService:Landroid/view/View;

    .line 167
    const v3, 0x7f0902c4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter$ViewHolder;->btnTel:Landroid/widget/ImageView;

    .line 168
    const v3, 0x7f0902c5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter$ViewHolder;->btnSms:Landroid/widget/ImageView;

    .line 169
    const v3, 0x7f0902c6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter$ViewHolder;->btnMap:Landroid/widget/ImageView;

    .line 170
    iget-object v3, v1, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter$ViewHolder;->layoutService:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v3, v1, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter$ViewHolder;->btnTel:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v3, v1, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter$ViewHolder;->btnSms:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v3, v1, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter$ViewHolder;->btnMap:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 176
    .end local v1           #holder:Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter$ViewHolder;
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter$ViewHolder;

    .line 177
    .restart local v1       #holder:Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/BankInfo;

    .line 178
    .local v0, data:Lcom/zhangdan/app/data/model/BankInfo;
    if-nez v0, :cond_1

    .line 191
    :goto_0
    return-object v2

    .line 180
    :cond_1
    iget-object v3, v1, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter$ViewHolder;->imgBankLogo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/BankInfo;->getBankIconResId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    iget-object v3, v1, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter$ViewHolder;->tvBankName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/BankInfo;->getBankName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget v3, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;->mSelectedSection:I

    if-ne p1, v3, :cond_2

    iget v3, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;->mSelectedPosition:I

    if-ne p2, v3, :cond_2

    .line 183
    iget-object v3, v1, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter$ViewHolder;->layoutService:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v3, v1, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter$ViewHolder;->imgArrow:Landroid/widget/ImageView;

    const v4, 0x7f0202a7

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 185
    iget-object v3, v1, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter$ViewHolder;->btnTel:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 186
    iget-object v3, v1, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter$ViewHolder;->btnSms:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 188
    :cond_2
    iget-object v3, v1, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter$ViewHolder;->layoutService:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v3, v1, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter$ViewHolder;->imgArrow:Landroid/widget/ImageView;

    const v4, 0x7f0202a8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x2

    return v0
.end method

.method public getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "section"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 197
    move-object v1, p2

    .line 198
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_0

    .line 199
    iget-object v2, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;->this$0:Lcom/zhangdan/app/activities/bankservice/BankListFragment;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/bankservice/BankListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03009c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 201
    :cond_0
    const v2, 0x7f090210

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 202
    .local v0, tvTitle:Landroid/widget/TextView;
    if-nez p1, :cond_2

    .line 203
    const v2, 0x7f070187

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 207
    :cond_1
    :goto_0
    return-object v1

    .line 204
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 205
    const v2, 0x7f070188

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/BankInfo;

    .line 224
    .local v0, data:Lcom/zhangdan/app/data/model/BankInfo;
    if-nez v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 226
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 227
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;->this$0:Lcom/zhangdan/app/activities/bankservice/BankListFragment;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/bankservice/BankListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/zhangdan/app/activities/bankservice/BankServiceActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 228
    const-string v2, "bank_id"

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/BankInfo;->getBankId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 229
    const-string v2, "bank_name"

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/BankInfo;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0902c4

    if-ne v2, v3, :cond_2

    .line 231
    iget-object v2, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;->this$0:Lcom/zhangdan/app/activities/bankservice/BankListFragment;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/bankservice/BankListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "right_menu_tel"

    invoke-static {v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 232
    const-string v2, "service_type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 237
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;->this$0:Lcom/zhangdan/app/activities/bankservice/BankListFragment;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/bankservice/BankListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 233
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0902c5

    if-ne v2, v3, :cond_1

    .line 234
    iget-object v2, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;->this$0:Lcom/zhangdan/app/activities/bankservice/BankListFragment;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/bankservice/BankListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "right_menu_sms"

    invoke-static {v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 235
    const-string v2, "service_type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "rawPosition"
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
    .local p1, parentView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, -0x1

    .line 243
    invoke-virtual {p0, p3}, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;->getSectionForPosition(I)I

    move-result v1

    .line 244
    .local v1, section:I
    invoke-virtual {p0, p3}, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;->getPositionInSectionForPosition(I)I

    move-result v0

    .line 245
    .local v0, position:I
    if-ne v0, v3, :cond_0

    .line 255
    :goto_0
    return-void

    .line 247
    :cond_0
    iget v2, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;->mSelectedSection:I

    if-ne v2, v1, :cond_1

    iget v2, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;->mSelectedPosition:I

    if-ne v2, v0, :cond_1

    .line 248
    iput v3, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;->mSelectedSection:I

    .line 249
    iput v3, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;->mSelectedPosition:I

    .line 254
    :goto_1
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 251
    :cond_1
    iput v1, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;->mSelectedSection:I

    .line 252
    iput v0, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;->mSelectedPosition:I

    goto :goto_1
.end method

.method public setDataSource(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/BankInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/BankInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, commList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/BankInfo;>;"
    .local p2, otherList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/BankInfo;>;"
    iput-object p1, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;->mCommList:Ljava/util/List;

    .line 122
    iput-object p2, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;->mOtherList:Ljava/util/List;

    .line 123
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;->notifyDataSetChanged()V

    .line 124
    return-void
.end method

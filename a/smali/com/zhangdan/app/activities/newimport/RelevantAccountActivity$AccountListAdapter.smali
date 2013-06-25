.class Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RelevantAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mdFormat:Ljava/text/SimpleDateFormat;

.field final synthetic this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

.field private ymdFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserInfo;>;"
    iput-object p1, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 103
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->ymdFormat:Ljava/text/SimpleDateFormat;

    .line 104
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->mdFormat:Ljava/text/SimpleDateFormat;

    .line 199
    new-instance v0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;-><init>(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 244
    new-instance v0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$2;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$2;-><init>(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 107
    iput-object p2, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->list:Ljava/util/List;

    .line 108
    return-void
.end method

.method static synthetic access$200(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->list:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/UserInfo;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 134
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 23
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 139
    const-string v17, "RelevantAccountActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "----- getView-------"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "-------------"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    move-object/from16 v16, p2

    .line 141
    .local v16, view:Landroid/view/View;
    if-nez v16, :cond_0

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v17

    const v18, 0x7f0300c2

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 143
    const v17, 0x7f0902af

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 144
    .local v9, imgAvatar:Landroid/widget/ImageView;
    const v17, 0x7f0902b0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 145
    .local v14, tvNickName:Landroid/widget/TextView;
    const v17, 0x7f0902b1

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 146
    .local v15, tvUserId:Landroid/widget/TextView;
    const v17, 0x7f0902ae

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 147
    .local v2, content:Landroid/view/View;
    const v17, 0x7f0902b2

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 148
    .local v13, tvLoginTime:Landroid/widget/TextView;
    new-instance v8, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$ViewHolder;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$ViewHolder;-><init>(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;)V

    .line 149
    .local v8, holder:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$ViewHolder;
    iput-object v9, v8, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$ViewHolder;->imgAvatar:Landroid/widget/ImageView;

    .line 150
    iput-object v14, v8, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$ViewHolder;->tvNickName:Landroid/widget/TextView;

    .line 151
    iput-object v15, v8, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$ViewHolder;->tvUserId:Landroid/widget/TextView;

    .line 152
    iput-object v2, v8, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$ViewHolder;->layoutContent:Landroid/view/View;

    .line 153
    iput-object v13, v8, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$ViewHolder;->tvLoginTime:Landroid/widget/TextView;

    .line 154
    iget-object v0, v8, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$ViewHolder;->layoutContent:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, v8, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$ViewHolder;->layoutContent:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 156
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 157
    const-string v17, "RelevantAccountActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "holder.imgAvatar="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v8, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$ViewHolder;->imgAvatar:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .end local v2           #content:Landroid/view/View;
    .end local v8           #holder:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$ViewHolder;
    .end local v9           #imgAvatar:Landroid/widget/ImageView;
    .end local v13           #tvLoginTime:Landroid/widget/TextView;
    .end local v14           #tvNickName:Landroid/widget/TextView;
    .end local v15           #tvUserId:Landroid/widget/TextView;
    :cond_0
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$ViewHolder;

    .line 160
    .restart local v8       #holder:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$ViewHolder;
    iget-object v0, v8, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$ViewHolder;->layoutContent:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 161
    invoke-virtual/range {p0 .. p1}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhangdan/app/data/model/UserInfo;

    .line 162
    .local v3, data:Lcom/zhangdan/app/data/model/UserInfo;
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserInfo;->getFigureUrl()Ljava/lang/String;

    move-result-object v6

    .line 163
    .local v6, figureUrl:Ljava/lang/String;
    invoke-static {v6}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string v17, "null"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 164
    :cond_1
    iget-object v0, v8, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$ViewHolder;->imgAvatar:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    move-object/from16 v18, v0

    #getter for: Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->mImageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;
    invoke-static/range {v18 .. v18}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->access$000(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;)Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v18

    const-string v19, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->build(Ljava/lang/String;Landroid/content/Context;)Lcom/novoda/imageloader/core/model/ImageTag;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 165
    iget-object v0, v8, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$ViewHolder;->imgAvatar:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const v18, 0x7f020093

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    :goto_0
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserInfo;->getFrom()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 172
    .local v7, from:Ljava/lang/String;
    const-string v17, "qq"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 173
    iget-object v0, v8, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$ViewHolder;->tvNickName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    move-object/from16 v18, v0

    const v19, 0x7f070132

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :goto_1
    iget-object v0, v8, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$ViewHolder;->tvUserId:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    move-object/from16 v18, v0

    const v19, 0x7f070176

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserInfo;->getRegTime()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 188
    .local v11, regTime:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->ymdFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 189
    .local v4, date:Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->mdFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 190
    .local v12, str:Ljava/lang/String;
    iget-object v0, v8, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$ViewHolder;->tvLoginTime:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v4           #date:Ljava/util/Date;
    .end local v12           #str:Ljava/lang/String;
    :goto_2
    return-object v16

    .line 167
    .end local v7           #from:Ljava/lang/String;
    .end local v11           #regTime:Ljava/lang/String;
    :cond_2
    iget-object v0, v8, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$ViewHolder;->imgAvatar:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    move-object/from16 v18, v0

    #getter for: Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->mImageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;
    invoke-static/range {v18 .. v18}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->access$000(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;)Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->build(Ljava/lang/String;Landroid/content/Context;)Lcom/novoda/imageloader/core/model/ImageTag;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->mImageManager:Lcom/novoda/imageloader/core/ImageManager;
    invoke-static/range {v17 .. v17}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->access$100(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;)Lcom/novoda/imageloader/core/ImageManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/novoda/imageloader/core/ImageManager;->getLoader()Lcom/novoda/imageloader/core/loader/Loader;

    move-result-object v17

    iget-object v0, v8, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$ViewHolder;->imgAvatar:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/novoda/imageloader/core/loader/Loader;->load(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 174
    .restart local v7       #from:Ljava/lang/String;
    :cond_3
    const-string v17, "sina"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 175
    iget-object v0, v8, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$ViewHolder;->tvNickName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    move-object/from16 v18, v0

    const v19, 0x7f070134

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 177
    :cond_4
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v10

    .line 178
    .local v10, name:Ljava/lang/String;
    const-string v17, "quick"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 179
    :cond_5
    invoke-static {v10}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    move-object/from16 v17, v0

    const v18, 0x7f07013b

    invoke-virtual/range {v17 .. v18}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 182
    :cond_6
    iget-object v0, v8, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$ViewHolder;->tvNickName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    move-object/from16 v18, v0

    const v19, 0x7f070133

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v10, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 191
    .end local v10           #name:Ljava/lang/String;
    .restart local v11       #regTime:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 192
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    iget-object v0, v8, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$ViewHolder;->tvLoginTime:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public removeData(Ljava/lang/String;)V
    .locals 3
    .parameter "userId"

    .prologue
    .line 111
    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->list:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 112
    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/UserInfo;

    .line 113
    .local v0, data:Lcom/zhangdan/app/data/model/UserInfo;
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 118
    .end local v0           #data:Lcom/zhangdan/app/data/model/UserInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->notifyDataSetChanged()V

    .line 120
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

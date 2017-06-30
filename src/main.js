import riot from 'riot';
import route from 'riot-route';

import './tag/app.tag';
import './tag/search-result.tag';
import './tag/item.tag';
import './tag/dmm-credit.tag';

route('/..', () => {
    const q = route.query();

    const keyword = (q.keyword !== undefined)
	  ? decodeURIComponent(q.keyword) : '湊莉久';

    console.log(`access /, keyword=${keyword}`);

    riot.mount('app', {keyword: keyword});
});

route.start(true);

import { Controller } from "@hotwired/stimulus"


// Connects to data-controller="share"
export default class extends Controller {
  connect() {
    const facebookShareBtn = document.querySelector('.facebook_share_btn');
    facebookShareBtn.addEventListener('click', () => {
      const link = facebookShareBtn.getAttribute('data-open-share-link');
      window.open(`https://www.facebook.com/sharer/sharer.php?u=${link}`);
    });

    const instagramShareBtn = document.querySelector('.instagram_plus_share_btn');
    instagramShareBtn.addEventListener('click', () => {
      const url = instagramShareBtn.getAttribute('data-open-share-url');
      window.open(`https://www.instagram.com/?url=${url}`);
    });

    const twitterShareBtn = document.querySelector('.twitter_share_btn');
    twitterShareBtn.addEventListener('click', () => {
      const url = twitterShareBtn.getAttribute('data-open-share-url');
      const title = twitterShareBtn.getAttribute('data-open-share-title');
      window.open(`https://twitter.com/intent/tweet?url=${url}&text=${title}`);
    });
  }
}

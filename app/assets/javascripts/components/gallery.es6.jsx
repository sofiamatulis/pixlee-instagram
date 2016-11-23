class Gallery extends React.Component {
  render () {
    const { gallery } = this.props;
    //  creating a constant gallery

    return (
      <div>
      {gallery.map(({ id, thumbnail_url }) => (
         <img key={ id } src={ thumbnail_url } />
       ))
      }
      </div>
    )
  }
}

// map is like each.do with ruby, it is iterating over with the id and thumbnail url

// here the images from a gallery are being rendered
